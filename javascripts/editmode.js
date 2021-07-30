(function ($) {
  // Returns the suitable version of the image depending on the viewport width.
  var getImageByWidth = function (sizes, targetWidth) {
    var prevImage;

    for (var i = 0, max = sizes.length; i < max; i++) {
      if (sizes[i].width < targetWidth) {
        return prevImage || sizes[i];
      }
      prevImage = sizes[i];
    }
    // Makes sure that smallest is returned if all images bigger than targetWidth.
    return sizes[sizes.length - 1];
  };

  var bgPickerImageSizesContains = function (sizes, url) {
    for (var i = sizes.length; i--; ) {
      if (url.indexOf(sizes[i].url.trim()) > -1) {
        return true;
      }
    }
    return false;
  };

  // Checks the lightness sum of header background image and color and sets the lightness class depending on it's value.
  var bgPickerContentLightnessClass = function (bgPickerArea) {
    if (bgPickerCombinedLightness >= 0.5) {
      $(bgPickerArea)
        .find(".js-background-type")
        .addClass("light-background")
        .removeClass("dark-background");
    } else {
      $(bgPickerArea)
        .find(".js-background-type")
        .addClass("dark-background")
        .removeClass("light-background");
    }
  };

  // Header background image and color preview logic function.
  var bgPickerPreview = function (bgPickerArea, data, bgPicker) {
    // Defines the variables used in preview logic.

    var bgPickerImagePrevious = $(bgPickerArea).css("background-image"),
      bgPickerImageSuitable = data.imageSizes
        ? getImageByWidth(data.imageSizes, $(window).width())
        : null,
      bgPickerImage =
        data.image && data.image !== ""
          ? "url(" + bgPickerImageSuitable.url + ")"
          : "none",
      bgPickerImageSizes =
        data.imageSizes && data.imageSizes !== "" ? data.imageSizes : null,
      bgPickerColor =
        data.color && data.color !== "" ? data.color : "rgba(0,0,0,0)",
      bgPickerColorDataLightness =
        data.colorData && data.colorData !== "" ? data.colorData.lightness : 1,
      colorExtractImage = $("<img>"),
      colorExtractCanvas = $("<canvas>"),
      colorExtractImageUrl =
        data.image && data.image !== "" ? data.image : null;

    if (colorExtractImageUrl) {
      if (
        bgPickerImageSizesContains(bgPickerImageSizes, bgPickerImagePrevious)
      ) {
        bgPickerCombinedLightness = getCombinedLightness(
          bgPicker.bgPickerImageColor,
          bgPickerColor
        );
        bgPickerContentLightnessClass(bgPickerArea);
      } else {
        colorExtractImage.attr(
          "src",
          colorExtractImageUrl.replace(/.*\/(photos|voogstock)/g, "/photos")
        );
        colorExtractImage.on("load", function () {
          ColorExtract.extract(
            colorExtractImage[0],
            colorExtractCanvas[0],
            function (data) {
              bgPicker.bgPickerImageColor = data.bgColor
                ? data.bgColor
                : "rgba(255,255,255,1)";
              bgPickerCombinedLightness = getCombinedLightness(
                bgPicker.bgPickerImageColor,
                bgPickerColor
              );
              bgPickerContentLightnessClass(bgPickerArea);
            }
          );
        });
      }
    } else {
      bgPickerCombinedLightness = getCombinedLightness(
        "rgba(255,255,255,1)",
        bgPickerColor
      );
      bgPickerContentLightnessClass(bgPickerArea);
    }

    // Updates the bgPickerContent background image and background color.
    $(bgPickerArea).css({ "background-image": bgPickerImage });
    $(bgPickerArea)
      .find(".js-background-color")
      .css({ "background-color": bgPickerColor });
  };

  var normalizeValue = function (value) {
    if (
      value == null ||
      (typeof value == "string" && value.match(/^[\\'"]+$/))
    ) {
      return "";
    } else {
      return value;
    }
  };

  // Header background image and color save logic function.
  var bgPickerCommit = function (dataKey, data) {
    var commitData = $.extend(true, {}, data);
    commitData.image = data.image || "";
    commitData.imageSizes = normalizeValue(data.imageSizes);
    commitData.color = data.color || "rgba(255,255,255,0)";
    commitData.combinedLightness = bgPickerCombinedLightness;
    pageData.set(dataKey, commitData);
  };

  var colorSum = function (bgColor, fgColor) {
    if (bgColor && fgColor) {
      if (typeof bgColor == "string") {
        bgColor = bgColor
          .replace(/rgba?\(/, "")
          .replace(/\)/, "")
          .split(",");
        $.each(bgColor, function (n, x) {
          bgColor[n] = +x;
        });
      }
      if (typeof fgColor == "string") {
        fgColor = fgColor
          .replace(/rgba?\(/, "")
          .replace(/\)/, "")
          .split(",");
        $.each(fgColor, function (n, x) {
          fgColor[n] = +x;
        });
      }
      if (typeof bgColor == "object" && bgColor.hasOwnProperty("length")) {
        if (bgColor.length == 3) {
          bgColor.push(1.0);
        }
      }
      if (typeof fgColor == "object" && fgColor.hasOwnProperty("length")) {
        if (fgColor.length == 3) {
          fgColor.push(1.0);
        }
      }
      var result = [0, 0, 0, 0];
      result[3] = 1 - (1 - fgColor[3]) * (1 - bgColor[3]);
      if (result[3] === 0) {
        result[3] = 1e-6;
      }
      result[0] = Math.min(
        (fgColor[0] * fgColor[3]) / result[3] +
          (bgColor[0] * bgColor[3] * (1 - fgColor[3])) / result[3],
        255
      );
      result[1] = Math.min(
        (fgColor[1] * fgColor[3]) / result[3] +
          (bgColor[1] * bgColor[3] * (1 - fgColor[3])) / result[3],
        255
      );
      result[2] = Math.min(
        (fgColor[2] * fgColor[3]) / result[3] +
          (bgColor[2] * bgColor[3] * (1 - fgColor[3])) / result[3],
        255
      );
      return $.map(result, function (e) {
        return Math.floor(e);
      });
    }
  };

  var getCombinedColor = function (bgColor, fgColor) {
    var sum = colorSum(
      bgColor || [255, 255, 255, 1],
      fgColor || [255, 255, 255, 1]
    );
    return sum;
  };

  var getCombinedLightness = function (bgColor, fgColor) {
    var combinedColor = getCombinedColor(bgColor, fgColor);
    var color =
      Math.round(
        (+combinedColor[0] * 0.2126 +
          +combinedColor[1] * 0.7152 +
          +combinedColor[2] * 0.0722) /
          2.55
      ) / 100;
    return color;
  };

  var bgPickerColorScheme = function (lightness) {
    if (typeof lightness != "undefined") {
      if (lightness > 0.6) {
        $(".header-wrapper").addClass("light").removeClass("dark");
      } else {
        $(".header-wrapper").addClass("dark").removeClass("light");
      }
    }
  };

  var articleBgPreview = function (data, article) {
    var $link = article.find(".link");

    if (data.image && data.image !== "") {
      $link.css("background-image", 'url("' + data.image + '")');
    } else {
      $link.css("background-image", "none");
    }
    var bg_color = data.color && data.color !== "" ? data.color : "transparent";
    article.find(".article-bg-color").css("background-color", bg_color);
  };

  var articleBgCommit = function (data, articleData, key) {
    var commitData = $.extend(true, {}, data);
    commitData.image = commitData.image || "";
    commitData.color = commitData.color || "";
    articleData.set(key, commitData);
  };

  window.site = $.extend(window.site || {}, {
    articleBgPreview: articleBgPreview,
    articleBgCommit: articleBgCommit,
    bgPickerPreview: bgPickerPreview,
    bgPickerCommit: bgPickerCommit,
    bgPickerColorScheme: bgPickerColorScheme
  });
})(jQuery);