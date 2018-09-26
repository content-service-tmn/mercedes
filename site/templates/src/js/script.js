function mobile_menu() {
    $(window).outerWidth() < 1023 ? $(".js-navigation-desktop > ul").length && $(".js-navigation-mobile").append($(".js-navigation-desktop > ul")) : $(".js-navigation-mobile > ul").length && $(".js-navigation-desktop").append($(".js-navigation-mobile > ul"))
}

function clone_menu() {
    !$(".js-navigation-desktop > ul").length || $(".js-navigation-promo > ul").length || $(".js-header-fixed-nav > ul").length || ($(".js-navigation-desktop > ul").clone().appendTo(".js-navigation-promo"), $(".js-navigation-desktop > ul").clone().appendTo(".js-header-fixed-nav"))
}

function fixed_header() {
    var t = $(window).height();
    $(this).scrollTop() > t ? $(".js-header").addClass("is-fixed") : $(".js-header").removeClass("is-fixed")
}



function homeFilterInit() {
  var min=-1,max=0;
  $(".home-product").each(function() {
    var tmp = $(this).attr("data-price").replace(/\s/g, '');
    if (min==-1) min=tmp;
    else if (tmp<min) min=tmp;
    if (tmp>max) max=tmp;
  });
  if (min==-1) min=0;
    var t = parseInt($(".home-filter").attr("data-min")),
        e = parseInt($(".home-filter").attr("data-max")),
        i = $("#range-price");
        t = min;
        e = max;
    $("#home-filter input[name='price[min]']").attr("value",t);
    $("#home-filter input[name='price[max]']").attr("value",e);
    i.ionRangeSlider({
        type: "double",
        min: t,
        max: e,
        from: t,
        to: e,
        step: 1,
        onStart: function(t) {
            $("#range-price-info").html("от <b>" + new Intl.NumberFormat("ru-RU").format(t.from) + "</b> до <b>" + new Intl.NumberFormat("ru-RU").format(t.to) + "</b> руб")
        },
        onChange: function(t) {
            $("#range-price-info").html("от <b>" + new Intl.NumberFormat("ru-RU").format(t.from) + "</b> до <b>" + new Intl.NumberFormat("ru-RU").format(t.to) + "</b> руб")
        },
        onFinish: function(t) {
            $("#home-filter").find('input[name="price[min]"]').val(t.from), $("#home-filter").find('input[name="price[max]"]').val(t.to), homeFilter()
        }
    }), $(".tabs-models .tabs-models__tab").on("click", function(t) {
        t.preventDefault();
        var e = $(this).attr("data-checked");
        $('input[name="amg"]').val(e), $(this).addClass("is-active").siblings().removeClass("is-active"), homeFilter()
    }), $(".js-filter-remove-all").on("click", function() {
        $('input[name="amg"]').val(0), $('.tabs-models__tab[data-checked="0"]').addClass("is-active").siblings().removeClass("is-active"), $("#home-filter").find('[type="checkbox"]').prop("checked", !1), i.data("ionRangeSlider").update({
            from: t,
            to: e
        }), $("#home-filter").find('input[name="price[min]"]').val(t), $("#home-filter").find('input[name="price[max]"]').val(e), $("#range-price-info").html("от <b>" + new Intl.NumberFormat("ru-RU").format(t) + "</b> до <b>" + new Intl.NumberFormat("ru-RU").format(e) + "</b> руб"), homeFilter()
    }), $(".js-filter-remove-types").on("click", function() {
        $("#home-filter").find('[type="checkbox"]').prop("checked", !1), homeFilter()
    }), $(".js-filter-remove-price").on("click", function() {
        i.data("ionRangeSlider").update({
            from: t,
            to: e
        }), $("#home-filter").find('input[name="price[min]"]').val(t), $("#home-filter").find('input[name="price[max]"]').val(e), $("#range-price-info").html("от <b>" + new Intl.NumberFormat("ru-RU").format(t) + "</b> до <b>" + new Intl.NumberFormat("ru-RU").format(e) + "</b> руб"), homeFilter()
    })
}

function listFilterInit() {
  var min=-1,max=0;
  $(".product").each(function() {
    var tmp = $(this).attr("data-price").replace(/\s/g, '');
    if (min==-1) min=tmp;
    else if (tmp<min) min=tmp;
    if (tmp>max) max=tmp;
  });
  if (min==-1) min=0;
    if ($("section").hasClass("product-filters")) {
        var e = $("#range-price"),
            i = parseInt($(".product-filters").attr("data-min")),
            n = parseInt($(".product-filters").attr("data-max"));
            i = min;
            n = max;
        $("#list-filter input[name='price[min]']").attr("value",i);
        $("#list-filter input[name='price[max]']").attr("value",n);
        e.ionRangeSlider({
            type: "double",
            min: i,
            max: n,
            from: i,
            to: n,
            step: 1,
            onStart: function(t) {
                $("#range-price-info").html("от <b>" + new Intl.NumberFormat("ru-RU").format(t.from) + "</b> до <b>" + new Intl.NumberFormat("ru-RU").format(t.to) + "</b> руб")
            },
            onChange: function(t) {
                $("#range-price-info").html("от <b>" + new Intl.NumberFormat("ru-RU").format(t.from) + "</b> до <b>" + new Intl.NumberFormat("ru-RU").format(t.to) + "</b> руб")
            },
            onFinish: function(t) {
                $("#list-filter").find('input[name="price[min]"]').val(t.from), $("#list-filter").find('input[name="price[max]"]').val(t.to), listFilter()
            }
        }), $(".js-filter-remove").on("click", function() {
            var t = $("#list-filter");
            t.find('[type="checkbox"]').prop("checked", !1), t.find('.select-js__item[data-get="0"]').trigger("click"), e.data("ionRangeSlider").update({
                from: i,
                to: n
            }), $("#list-filter").find('input[name="price[min]"]').val(i), $("#list-filter").find('input[name="price[max]"]').val(n), $("#range-price-info").html("от <b>" + new Intl.NumberFormat("ru-RU").format(i) + "</b> до <b>" + new Intl.NumberFormat("ru-RU").format(n) + "</b> руб"), listFilter()
        })
    }
}

function homeFilter() {
  var min = parseInt($("#home-filter input[name='price[min]']").attr("value").replace(/\s/g, ''));
  var max = parseInt($("#home-filter input[name='price[max]']").attr("value").replace(/\s/g, ''));

  $("#home-filter .custom-switcher__tab").each(function(i){
    var categories = [];
    $(this).find("input.filter-cars__input:checked").each(function(j) {
      categories[j]=$(this).attr('data-category');
    });
    var products = $('.home-filter+.custom-switcher__container .custom-switcher__tab').eq(i);
    products.find(".home-product").addClass('js-hidden').removeClass('home-product--first');
    products.find(".home-product")
    .filter(function(){
      var price = parseInt($(this).attr('data-price').replace(/\s/g, ''));
      return price>=min && price<=max;
    })
    .filter(function(){
      if (categories.length==0) return true;
      return categories.includes($(this).attr("data-category"));
    })
    .removeClass('js-hidden');
    var cat = "";
    products.find(".home-product:not(.js-hidden)").each(function() {
      var tmp = $(this).attr('data-category');
      if (tmp!=cat) {
        cat = tmp;
        $(this).addClass('home-product--first');
      }
    });
  });
}

function listFilter() {
  var model = $('select.js-select[name="engine"] option:selected').text();
  var min = parseInt($("input[name='price[min]']").attr("value").replace(/\s/g, ''));
  var max = parseInt($("input[name='price[max]']").attr("value").replace(/\s/g, ''));
  var isAvail = $("input#stock_status_yes:checked").length;
  var notAvail = $("input#stock_status_no:checked").length;
  var colors = [];
  console.log(model,min,max,isAvail,notAvail,colors);
  $("input.input-color__input:checked").each(function(index) {
    colors[index] = $(this).attr("value");
  });
  $(".product").addClass('js-hidden');
  $(".product").filter(function() {
    var price = parseInt($(this).attr('data-price').replace(/\s/g, ''));
    return price>=min && price<=max;
  })
  .filter(function() {
    var md = $(this).attr('data-model');
    if (model=="Все") return true;
    return model==md;
  })
  .filter(function() {
    var isNotAvailable = $(this).attr('data-not-available');
    if (isAvail==notAvail) return true;
    return isNotAvailable==notAvail || isNotAvailable!=isAvail;
  })
  .filter(function(){
    var color = $(this).attr('data-color');
    console.log(1);
    if (colors.length==0) return true;
    return colors.includes(color);
  })
  .removeClass('js-hidden');
  var tmp = $(".product").length;
  $(".s-product-in-stock__mini-title").attr("text",tmp);
  if (tmp>0) {
    if (tmp==$(".product.js-hidden").length) {
      $(".s-product-not-available").removeClass("js-hidden");
      $(".s-product-in-stock__head").addClass("js-hidden");
    }
    else {
      $(".s-product-not-available").addClass("js-hidden");
      $(".s-product-in-stock__head").removeClass("js-hidden");
    }
  }
}

function getModelInfo(t, url) {
    console.log(t);
    var ident = t;
    history.replaceState([], $("title").text(), location.origin + location.pathname + "#order_id=" + t),
        $.magnificPopup.open({
        items: {
            src: url
        },
        type: "ajax",
        fixedContentPos: !0,
        closeOnBgClick: !1,
        ajax: {
            settings: {
                type: "POST",
                data: {
                    order_id: (t)
                },
                dataType: "html"
            }
        },
        callbacks: {
            close: function() {
                history.replaceState([], $("title").text(), location.origin + location.pathname)
            }
        },
        tClose: "Закрыть",
        tLoading: "Загрузка…"
    });
}

function updateTradeIn() {

}

function qwerty(t){
    $.ajax({
        url: "/mercedes/ajax-handler/",
        type: 'POST',
        data: {data: {id: t}},
        success: function (result) {
            console.log("success");
        },
        error: function (result) {
            console.log("error");
        }

    });

}

function appendSelectValue() {
    $(".js-select").each(function(t, e) {
        $(e).prev().html($(e).find("option:selected").text())
    })
}

function sendRequest(l, c) {
    var h = $("body").data("goal"),
        u = $("#success_modal"),
        t = $(l).find('input[name="code"]').val(),
        e = $(l).serialize(),
        d = $(l).find("button").text();
    $.ajax({
        url: "/mercedes/ajax-handler/",
        type: "post",
        data: e,
        dataType: "json",
        beforeSend: function() {
            // $(l).find("button").prop("disabled", !0).text("Отправляю…"), h && window["yaCounter" + h].reachGoal("request_send"), "function" == typeof gtag && ("consultation" === t ? gtag("event", "callbackform", {
            //     event_category: "callback",
            //     event_action: "send"
            // }) : "individual_offer" === t ? gtag("event", "offerform", {
            //     event_category: "offer",
            //     event_action: "send"
            // }) : "credit_and_leasing" === t || ("trade_in" === t ? gtag("event", "tradeinform", {
            //     event_category: "tradein",
            //     event_action: "send"
            // }) : "test_drive" === t ? gtag("event", "testdriveform", {
            //     event_category: "testdrive",
            //     event_action: "send"
            // }) : "issues" === t ? gtag("event", "questionform", {
            //     event_category: "question",
            //     event_action: "send"
            // }) : "best_offer" === t || ("credit" === t ? gtag("event", "creditform", {
            //     event_category: "credit",
            //     event_action: "send"
            // }) : "best_price" === t && gtag("event", "cheaperform", {
            //     event_category: "cheaper",
            //     event_action: "send"
            // }))))
        }
    }).done(function(t) {
        if ($(l).find("button").prop("disabled", !1).text(d), $(l).find(".error").remove(), "success" === t.status) {
            // try {
            //     var e = $(l),
            //         i = e.find('input[name="name"]').val(),
            //         n = e.find('input[name="phone"]').val(),
            //         s = e.find('input[name="code"]').val(),
            //         o = "";
            //     0 < e.find('select[name="model"]').length && (o = "Модель: " + e.find('select[name="model"]').val());
            //     var r = {
            //         fio: i,
            //         phoneNumber: n,
            //         subject: s,
            //         orderComment: o,
            //         sessionId: window.call_value
            //     };
            //     $.ajax({
            //         url: "https://api-node7.calltouch.ru/calls-service/RestAPI/21690/requests/orders/register/",
            //         dataType: "json",
            //         type: "POST",
            //         data: r,
            //         async: !1
            //     })
            // } catch (t) {}
            console.log("success");
            u.attr("data-close", 0), $(l).find('input:not([name="code"], [name="page"])').val("").next().removeClass("is-active"), $.magnificPopup.close(), $.magnificPopup.open({
                items: {
                    src: "#success_modal"
                },
                type: "inline",
                fixedContentPos: !0,
                callbacks: {
                    afterClose: function() {
                        u.attr("data-back") && (getModelInfo(u.attr("data-back")), u.attr("data-back", "")), u.attr("data-close", 1)
                    },
                    open: function() {
                        h && window["yaCounter" + h].reachGoal("request_success_view")
                    }
                },
                tClose: "Закрыть",
                tLoading: "Загрузка…"
            }), "undefined" !== c && u.attr("data-back", c), h && window["yaCounter" + h].reachGoal("request_success")
        }
        if ("error" === t.status)
            for (var a in t.error) t.error.hasOwnProperty(a) && "confirm" !== a && $(l).find('[name="' + a + '"]').parent().append('<span class="error">' + t.error[a] + "</span>")
    }).fail(function(t) {
        console.log(t)
    })
}

function sendMail(t) {
    console.log("123");
    $.ajax({
        url: "index.php?route=common/home/sendMail",
        type: "post",
        data: {
            request_id: t
        }
    }).done(function(t) {}).fail(function(t) {
        console.log(t)
    })
}

function confirmRequest(t) {
    var e = $(t).find('[name="confirm"]').prop("checked");
    $(t).find('button[type="button"]').prop("disabled", !e)
}

function enterFormSubmit() {
    $(".js-enter input").on("keydown", function(t) {
        13 === t.keyCode && $(this).closest(".js-enter").find('button[type="button"]').trigger("click")
    })
}

function validatePhone() {
    var t = $('input[type="tel"]');
    t.on("keydown", function(t) {
        (t.keyCode < 48 || 57 < t.keyCode) && (t.keyCode < 96 || 105 < t.keyCode) && 8 !== t.keyCode && 189 !== t.keyCode && 109 !== t.keyCode && 37 !== t.keyCode && 39 !== t.keyCode && 16 !== t.keyCode && 17 !== t.keyCode && 187 !== t.keyCode && 107 !== t.keyCode && 32 !== t.keyCode && 46 !== t.keyCode && t.preventDefault()
    }), t.on("keyup keypress", function() {
        var t = $(this).val().replace(/[^0-9]/g, ""),
            e = !1;
        "8" === t[0] || "7" === t[0] ? 11 < t.length && (e = !0) : "3" === t[0] ? 12 < t.length && (e = !0) : e = !0, e && 0 !== t.length && $(this).val($(this).val().substring(0, $(this).val().length - 1))
    })
}

function lazyLoadBrazzers() {
    $(window).on("load", function() {
        var t = $("#list-content .product:first");
        i(t.find(".product__image")), i(t.next().find(".product__image")), i(t.next().next().find(".product__image"))
    }), $("#list-content .product").one("mouseover", function() {
        var t = $(this),
            e = t.find(".product__image");
        i(e), i(t.next().find(".product__image")), i(t.next().next().find(".product__image"))
    });
    var i = function(t) {
        0 === t.length || t.hasClass("is-loaded") || (t.find("img").each(function() {
            var t = $(this);
            t.attr({
                src: t.attr("data-src"),
                srcset: t.attr("data-srcset")
            })
        }), t.addClass("is-loaded"))
    }
}

function lazyLoadOnList() {
    $(window).on("load", function() {
        $(".product-promo .product-gallery__images").find("picture").each(function() {
            var t = $(this);
            t.find("source").attr({
                srcset: t.find("source").attr("data-srcset")
            }).removeAttr("data-srcset"), t.find("img").attr({
                src: t.find("img").attr("data-src"),
                srcset: t.find("img").attr("data-srcset")
            }).removeAttr("data-src").removeAttr("data-srcset")
        })
    })
}

function lazyLoadOnSlider() {
    $(window).on("load", function() {
        var t = $(".home-promo__slide").find("picture");
        t.find("source").each(function() {
            var t = $(this);
            t.attr({
                srcset: t.attr("data-srcset")
            })
        }).removeAttr("data-srcset"), t.find("img").each(function() {
            var t = $(this);
            t.attr({
                src: t.attr("data-src"),
                srcset: t.attr("data-srcset")
            }).removeAttr("data-src").removeAttr("data-srcset")
        })
    })
}! function(t, e) {
    "use strict";
    "object" == typeof module && "object" == typeof module.exports ? module.exports = t.document ? e(t, !0) : function(t) {
        if (!t.document) throw new Error("jQuery requires a window with a document");
        return e(t)
    } : e(t)
}("undefined" != typeof window ? window : this, function(C, t) {
    "use strict";
    var e = [],
        $ = C.document,
        n = Object.getPrototypeOf,
        a = e.slice,
        m = e.concat,
        l = e.push,
        s = e.indexOf,
        i = {},
        o = i.toString,
        f = i.hasOwnProperty,
        r = f.toString,
        c = r.call(Object),
        g = {};

    function v(t, e) {
        var i = (e = e || $).createElement("script");
        i.text = t, e.head.appendChild(i).parentNode.removeChild(i)
    }
    var h = "3.1.1",
        k = function(t, e) {
            return new k.fn.init(t, e)
        },
        u = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,
        d = /^-ms-/,
        p = /-([a-z])/g,
        _ = function(t, e) {
            return e.toUpperCase()
        };

    function y(t) {
        var e = !!t && "length" in t && t.length,
            i = k.type(t);
        return "function" !== i && !k.isWindow(t) && ("array" === i || 0 === e || "number" == typeof e && 0 < e && e - 1 in t)
    }
    k.fn = k.prototype = {
        jquery: h,
        constructor: k,
        length: 0,
        toArray: function() {
            return a.call(this)
        },
        get: function(t) {
            return null == t ? a.call(this) : t < 0 ? this[t + this.length] : this[t]
        },
        pushStack: function(t) {
            var e = k.merge(this.constructor(), t);
            return e.prevObject = this, e
        },
        each: function(t) {
            return k.each(this, t)
        },
        map: function(i) {
            return this.pushStack(k.map(this, function(t, e) {
                return i.call(t, e, t)
            }))
        },
        slice: function() {
            return this.pushStack(a.apply(this, arguments))
        },
        first: function() {
            return this.eq(0)
        },
        last: function() {
            return this.eq(-1)
        },
        eq: function(t) {
            var e = this.length,
                i = +t + (t < 0 ? e : 0);
            return this.pushStack(0 <= i && i < e ? [this[i]] : [])
        },
        end: function() {
            return this.prevObject || this.constructor()
        },
        push: l,
        sort: e.sort,
        splice: e.splice
    }, k.extend = k.fn.extend = function() {
        var t, e, i, n, s, o, r = arguments[0] || {},
            a = 1,
            l = arguments.length,
            c = !1;
        for ("boolean" == typeof r && (c = r, r = arguments[a] || {}, a++), "object" == typeof r || k.isFunction(r) || (r = {}), a === l && (r = this, a--); a < l; a++)
            if (null != (t = arguments[a]))
                for (e in t) i = r[e], r !== (n = t[e]) && (c && n && (k.isPlainObject(n) || (s = k.isArray(n))) ? (s ? (s = !1, o = i && k.isArray(i) ? i : []) : o = i && k.isPlainObject(i) ? i : {}, r[e] = k.extend(c, o, n)) : void 0 !== n && (r[e] = n));
        return r
    }, k.extend({
        expando: "jQuery" + (h + Math.random()).replace(/\D/g, ""),
        isReady: !0,
        error: function(t) {
            throw new Error(t)
        },
        noop: function() {},
        isFunction: function(t) {
            return "function" === k.type(t)
        },
        isArray: Array.isArray,
        isWindow: function(t) {
            return null != t && t === t.window
        },
        isNumeric: function(t) {
            var e = k.type(t);
            return ("number" === e || "string" === e) && !isNaN(t - parseFloat(t))
        },
        isPlainObject: function(t) {
            var e, i;
            return !(!t || "[object Object]" !== o.call(t) || (e = n(t)) && ("function" != typeof(i = f.call(e, "constructor") && e.constructor) || r.call(i) !== c))
        },
        isEmptyObject: function(t) {
            var e;
            for (e in t) return !1;
            return !0
        },
        type: function(t) {
            return null == t ? t + "" : "object" == typeof t || "function" == typeof t ? i[o.call(t)] || "object" : typeof t
        },
        globalEval: function(t) {
            v(t)
        },
        camelCase: function(t) {
            return t.replace(d, "ms-").replace(p, _)
        },
        nodeName: function(t, e) {
            return t.nodeName && t.nodeName.toLowerCase() === e.toLowerCase()
        },
        each: function(t, e) {
            var i, n = 0;
            if (y(t))
                for (i = t.length; n < i && !1 !== e.call(t[n], n, t[n]); n++);
            else
                for (n in t)
                    if (!1 === e.call(t[n], n, t[n])) break;
            return t
        },
        trim: function(t) {
            return null == t ? "" : (t + "").replace(u, "")
        },
        makeArray: function(t, e) {
            var i = e || [];
            return null != t && (y(Object(t)) ? k.merge(i, "string" == typeof t ? [t] : t) : l.call(i, t)), i
        },
        inArray: function(t, e, i) {
            return null == e ? -1 : s.call(e, t, i)
        },
        merge: function(t, e) {
            for (var i = +e.length, n = 0, s = t.length; n < i; n++) t[s++] = e[n];
            return t.length = s, t
        },
        grep: function(t, e, i) {
            for (var n = [], s = 0, o = t.length, r = !i; s < o; s++) !e(t[s], s) !== r && n.push(t[s]);
            return n
        },
        map: function(t, e, i) {
            var n, s, o = 0,
                r = [];
            if (y(t))
                for (n = t.length; o < n; o++) null != (s = e(t[o], o, i)) && r.push(s);
            else
                for (o in t) null != (s = e(t[o], o, i)) && r.push(s);
            return m.apply([], r)
        },
        guid: 1,
        proxy: function(t, e) {
            var i, n, s;
            if ("string" == typeof e && (i = t[e], e = t, t = i), k.isFunction(t)) return n = a.call(arguments, 2), (s = function() {
                return t.apply(e || this, n.concat(a.call(arguments)))
            }).guid = t.guid = t.guid || k.guid++, s
        },
        now: Date.now,
        support: g
    }), "function" == typeof Symbol && (k.fn[Symbol.iterator] = e[Symbol.iterator]), k.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "), function(t, e) {
        i["[object " + e + "]"] = e.toLowerCase()
    });
    var b = function(i) {
        var t, p, b, o, s, f, u, m, x, l, c, w, C, r, $, g, a, h, v, k = "sizzle" + 1 * new Date,
            _ = i.document,
            T = 0,
            n = 0,
            d = rt(),
            y = rt(),
            E = rt(),
            S = function(t, e) {
                return t === e && (c = !0), 0
            },
            j = {}.hasOwnProperty,
            e = [],
            F = e.pop,
            D = e.push,
            N = e.push,
            I = e.slice,
            P = function(t, e) {
                for (var i = 0, n = t.length; i < n; i++)
                    if (t[i] === e) return i;
                return -1
            },
            A = "checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",
            z = "[\\x20\\t\\r\\n\\f]",
            M = "(?:\\\\.|[\\w-]|[^\0-\\xa0])+",
            L = "\\[" + z + "*(" + M + ")(?:" + z + "*([*^$|!~]?=)" + z + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + M + "))|)" + z + "*\\]",
            O = ":(" + M + ")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|" + L + ")*)|.*)\\)|)",
            H = new RegExp(z + "+", "g"),
            q = new RegExp("^" + z + "+|((?:^|[^\\\\])(?:\\\\.)*)" + z + "+$", "g"),
            R = new RegExp("^" + z + "*," + z + "*"),
            W = new RegExp("^" + z + "*([>+~]|" + z + ")" + z + "*"),
            B = new RegExp("=" + z + "*([^\\]'\"]*?)" + z + "*\\]", "g"),
            U = new RegExp(O),
            X = new RegExp("^" + M + "$"),
            G = {
                ID: new RegExp("^#(" + M + ")"),
                CLASS: new RegExp("^\\.(" + M + ")"),
                TAG: new RegExp("^(" + M + "|[*])"),
                ATTR: new RegExp("^" + L),
                PSEUDO: new RegExp("^" + O),
                CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + z + "*(even|odd|(([+-]|)(\\d*)n|)" + z + "*(?:([+-]|)" + z + "*(\\d+)|))" + z + "*\\)|)", "i"),
                bool: new RegExp("^(?:" + A + ")$", "i"),
                needsContext: new RegExp("^" + z + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + z + "*((?:-\\d)?\\d*)" + z + "*\\)|)(?=[^-]|$)", "i")
            },
            V = /^(?:input|select|textarea|button)$/i,
            Q = /^h\d$/i,
            Y = /^[^{]+\{\s*\[native \w/,
            Z = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
            K = /[+~]/,
            J = new RegExp("\\\\([\\da-f]{1,6}" + z + "?|(" + z + ")|.)", "ig"),
            tt = function(t, e, i) {
                var n = "0x" + e - 65536;
                return n != n || i ? e : n < 0 ? String.fromCharCode(n + 65536) : String.fromCharCode(n >> 10 | 55296, 1023 & n | 56320)
            },
            et = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,
            it = function(t, e) {
                return e ? "\0" === t ? "�" : t.slice(0, -1) + "\\" + t.charCodeAt(t.length - 1).toString(16) + " " : "\\" + t
            },
            nt = function() {
                w()
            },
            st = _t(function(t) {
                return !0 === t.disabled && ("form" in t || "label" in t)
            }, {
                dir: "parentNode",
                next: "legend"
            });
        try {
            N.apply(e = I.call(_.childNodes), _.childNodes), e[_.childNodes.length].nodeType
        } catch (t) {
            N = {
                apply: e.length ? function(t, e) {
                    D.apply(t, I.call(e))
                } : function(t, e) {
                    for (var i = t.length, n = 0; t[i++] = e[n++];);
                    t.length = i - 1
                }
            }
        }

        function ot(t, e, i, n) {
            var s, o, r, a, l, c, h, u = e && e.ownerDocument,
                d = e ? e.nodeType : 9;
            if (i = i || [], "string" != typeof t || !t || 1 !== d && 9 !== d && 11 !== d) return i;
            if (!n && ((e ? e.ownerDocument || e : _) !== C && w(e), e = e || C, $)) {
                if (11 !== d && (l = Z.exec(t)))
                    if (s = l[1]) {
                        if (9 === d) {
                            if (!(r = e.getElementById(s))) return i;
                            if (r.id === s) return i.push(r), i
                        } else if (u && (r = u.getElementById(s)) && v(e, r) && r.id === s) return i.push(r), i
                    } else {
                        if (l[2]) return N.apply(i, e.getElementsByTagName(t)), i;
                        if ((s = l[3]) && p.getElementsByClassName && e.getElementsByClassName) return N.apply(i, e.getElementsByClassName(s)), i
                    } if (p.qsa && !E[t + " "] && (!g || !g.test(t))) {
                    if (1 !== d) u = e, h = t;
                    else if ("object" !== e.nodeName.toLowerCase()) {
                        for ((a = e.getAttribute("id")) ? a = a.replace(et, it) : e.setAttribute("id", a = k), o = (c = f(t)).length; o--;) c[o] = "#" + a + " " + vt(c[o]);
                        h = c.join(","), u = K.test(t) && mt(e.parentNode) || e
                    }
                    if (h) try {
                        return N.apply(i, u.querySelectorAll(h)), i
                    } catch (t) {} finally {
                        a === k && e.removeAttribute("id")
                    }
                }
            }
            return m(t.replace(q, "$1"), e, i, n)
        }

        function rt() {
            var n = [];
            return function t(e, i) {
                return n.push(e + " ") > b.cacheLength && delete t[n.shift()], t[e + " "] = i
            }
        }

        function at(t) {
            return t[k] = !0, t
        }

        function lt(t) {
            var e = C.createElement("fieldset");
            try {
                return !!t(e)
            } catch (t) {
                return !1
            } finally {
                e.parentNode && e.parentNode.removeChild(e), e = null
            }
        }

        function ct(t, e) {
            for (var i = t.split("|"), n = i.length; n--;) b.attrHandle[i[n]] = e
        }

        function ht(t, e) {
            var i = e && t,
                n = i && 1 === t.nodeType && 1 === e.nodeType && t.sourceIndex - e.sourceIndex;
            if (n) return n;
            if (i)
                for (; i = i.nextSibling;)
                    if (i === e) return -1;
            return t ? 1 : -1
        }

        function ut(e) {
            return function(t) {
                return "input" === t.nodeName.toLowerCase() && t.type === e
            }
        }

        function dt(i) {
            return function(t) {
                var e = t.nodeName.toLowerCase();
                return ("input" === e || "button" === e) && t.type === i
            }
        }

        function pt(e) {
            return function(t) {
                return "form" in t ? t.parentNode && !1 === t.disabled ? "label" in t ? "label" in t.parentNode ? t.parentNode.disabled === e : t.disabled === e : t.isDisabled === e || t.isDisabled !== !e && st(t) === e : t.disabled === e : "label" in t && t.disabled === e
            }
        }

        function ft(r) {
            return at(function(o) {
                return o = +o, at(function(t, e) {
                    for (var i, n = r([], t.length, o), s = n.length; s--;) t[i = n[s]] && (t[i] = !(e[i] = t[i]))
                })
            })
        }

        function mt(t) {
            return t && void 0 !== t.getElementsByTagName && t
        }
        for (t in p = ot.support = {}, s = ot.isXML = function(t) {
                var e = t && (t.ownerDocument || t).documentElement;
                return !!e && "HTML" !== e.nodeName
            }, w = ot.setDocument = function(t) {
                var e, i, n = t ? t.ownerDocument || t : _;
                return n !== C && 9 === n.nodeType && n.documentElement && (r = (C = n).documentElement, $ = !s(C), _ !== C && (i = C.defaultView) && i.top !== i && (i.addEventListener ? i.addEventListener("unload", nt, !1) : i.attachEvent && i.attachEvent("onunload", nt)), p.attributes = lt(function(t) {
                    return t.className = "i", !t.getAttribute("className")
                }), p.getElementsByTagName = lt(function(t) {
                    return t.appendChild(C.createComment("")), !t.getElementsByTagName("*").length
                }), p.getElementsByClassName = Y.test(C.getElementsByClassName), p.getById = lt(function(t) {
                    return r.appendChild(t).id = k, !C.getElementsByName || !C.getElementsByName(k).length
                }), p.getById ? (b.filter.ID = function(t) {
                    var e = t.replace(J, tt);
                    return function(t) {
                        return t.getAttribute("id") === e
                    }
                }, b.find.ID = function(t, e) {
                    if (void 0 !== e.getElementById && $) {
                        var i = e.getElementById(t);
                        return i ? [i] : []
                    }
                }) : (b.filter.ID = function(t) {
                    var i = t.replace(J, tt);
                    return function(t) {
                        var e = void 0 !== t.getAttributeNode && t.getAttributeNode("id");
                        return e && e.value === i
                    }
                }, b.find.ID = function(t, e) {
                    if (void 0 !== e.getElementById && $) {
                        var i, n, s, o = e.getElementById(t);
                        if (o) {
                            if ((i = o.getAttributeNode("id")) && i.value === t) return [o];
                            for (s = e.getElementsByName(t), n = 0; o = s[n++];)
                                if ((i = o.getAttributeNode("id")) && i.value === t) return [o]
                        }
                        return []
                    }
                }), b.find.TAG = p.getElementsByTagName ? function(t, e) {
                    return void 0 !== e.getElementsByTagName ? e.getElementsByTagName(t) : p.qsa ? e.querySelectorAll(t) : void 0
                } : function(t, e) {
                    var i, n = [],
                        s = 0,
                        o = e.getElementsByTagName(t);
                    if ("*" === t) {
                        for (; i = o[s++];) 1 === i.nodeType && n.push(i);
                        return n
                    }
                    return o
                }, b.find.CLASS = p.getElementsByClassName && function(t, e) {
                    if (void 0 !== e.getElementsByClassName && $) return e.getElementsByClassName(t)
                }, a = [], g = [], (p.qsa = Y.test(C.querySelectorAll)) && (lt(function(t) {
                    r.appendChild(t).innerHTML = "<a id='" + k + "'></a><select id='" + k + "-\r\\' msallowcapture=''><option selected=''></option></select>", t.querySelectorAll("[msallowcapture^='']").length && g.push("[*^$]=" + z + "*(?:''|\"\")"), t.querySelectorAll("[selected]").length || g.push("\\[" + z + "*(?:value|" + A + ")"), t.querySelectorAll("[id~=" + k + "-]").length || g.push("~="), t.querySelectorAll(":checked").length || g.push(":checked"), t.querySelectorAll("a#" + k + "+*").length || g.push(".#.+[+~]")
                }), lt(function(t) {
                    t.innerHTML = "<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";
                    var e = C.createElement("input");
                    e.setAttribute("type", "hidden"), t.appendChild(e).setAttribute("name", "D"), t.querySelectorAll("[name=d]").length && g.push("name" + z + "*[*^$|!~]?="), 2 !== t.querySelectorAll(":enabled").length && g.push(":enabled", ":disabled"), r.appendChild(t).disabled = !0, 2 !== t.querySelectorAll(":disabled").length && g.push(":enabled", ":disabled"), t.querySelectorAll("*,:x"), g.push(",.*:")
                })), (p.matchesSelector = Y.test(h = r.matches || r.webkitMatchesSelector || r.mozMatchesSelector || r.oMatchesSelector || r.msMatchesSelector)) && lt(function(t) {
                    p.disconnectedMatch = h.call(t, "*"), h.call(t, "[s!='']:x"), a.push("!=", O)
                }), g = g.length && new RegExp(g.join("|")), a = a.length && new RegExp(a.join("|")), e = Y.test(r.compareDocumentPosition), v = e || Y.test(r.contains) ? function(t, e) {
                    var i = 9 === t.nodeType ? t.documentElement : t,
                        n = e && e.parentNode;
                    return t === n || !(!n || 1 !== n.nodeType || !(i.contains ? i.contains(n) : t.compareDocumentPosition && 16 & t.compareDocumentPosition(n)))
                } : function(t, e) {
                    if (e)
                        for (; e = e.parentNode;)
                            if (e === t) return !0;
                    return !1
                }, S = e ? function(t, e) {
                    if (t === e) return c = !0, 0;
                    var i = !t.compareDocumentPosition - !e.compareDocumentPosition;
                    return i || (1 & (i = (t.ownerDocument || t) === (e.ownerDocument || e) ? t.compareDocumentPosition(e) : 1) || !p.sortDetached && e.compareDocumentPosition(t) === i ? t === C || t.ownerDocument === _ && v(_, t) ? -1 : e === C || e.ownerDocument === _ && v(_, e) ? 1 : l ? P(l, t) - P(l, e) : 0 : 4 & i ? -1 : 1)
                } : function(t, e) {
                    if (t === e) return c = !0, 0;
                    var i, n = 0,
                        s = t.parentNode,
                        o = e.parentNode,
                        r = [t],
                        a = [e];
                    if (!s || !o) return t === C ? -1 : e === C ? 1 : s ? -1 : o ? 1 : l ? P(l, t) - P(l, e) : 0;
                    if (s === o) return ht(t, e);
                    for (i = t; i = i.parentNode;) r.unshift(i);
                    for (i = e; i = i.parentNode;) a.unshift(i);
                    for (; r[n] === a[n];) n++;
                    return n ? ht(r[n], a[n]) : r[n] === _ ? -1 : a[n] === _ ? 1 : 0
                }), C
            }, ot.matches = function(t, e) {
                return ot(t, null, null, e)
            }, ot.matchesSelector = function(t, e) {
                if ((t.ownerDocument || t) !== C && w(t), e = e.replace(B, "='$1']"), p.matchesSelector && $ && !E[e + " "] && (!a || !a.test(e)) && (!g || !g.test(e))) try {
                    var i = h.call(t, e);
                    if (i || p.disconnectedMatch || t.document && 11 !== t.document.nodeType) return i
                } catch (t) {}
                return 0 < ot(e, C, null, [t]).length
            }, ot.contains = function(t, e) {
                return (t.ownerDocument || t) !== C && w(t), v(t, e)
            }, ot.attr = function(t, e) {
                (t.ownerDocument || t) !== C && w(t);
                var i = b.attrHandle[e.toLowerCase()],
                    n = i && j.call(b.attrHandle, e.toLowerCase()) ? i(t, e, !$) : void 0;
                return void 0 !== n ? n : p.attributes || !$ ? t.getAttribute(e) : (n = t.getAttributeNode(e)) && n.specified ? n.value : null
            }, ot.escape = function(t) {
                return (t + "").replace(et, it)
            }, ot.error = function(t) {
                throw new Error("Syntax error, unrecognized expression: " + t)
            }, ot.uniqueSort = function(t) {
                var e, i = [],
                    n = 0,
                    s = 0;
                if (c = !p.detectDuplicates, l = !p.sortStable && t.slice(0), t.sort(S), c) {
                    for (; e = t[s++];) e === t[s] && (n = i.push(s));
                    for (; n--;) t.splice(i[n], 1)
                }
                return l = null, t
            }, o = ot.getText = function(t) {
                var e, i = "",
                    n = 0,
                    s = t.nodeType;
                if (s) {
                    if (1 === s || 9 === s || 11 === s) {
                        if ("string" == typeof t.textContent) return t.textContent;
                        for (t = t.firstChild; t; t = t.nextSibling) i += o(t)
                    } else if (3 === s || 4 === s) return t.nodeValue
                } else
                    for (; e = t[n++];) i += o(e);
                return i
            }, (b = ot.selectors = {
                cacheLength: 50,
                createPseudo: at,
                match: G,
                attrHandle: {},
                find: {},
                relative: {
                    ">": {
                        dir: "parentNode",
                        first: !0
                    },
                    " ": {
                        dir: "parentNode"
                    },
                    "+": {
                        dir: "previousSibling",
                        first: !0
                    },
                    "~": {
                        dir: "previousSibling"
                    }
                },
                preFilter: {
                    ATTR: function(t) {
                        return t[1] = t[1].replace(J, tt), t[3] = (t[3] || t[4] || t[5] || "").replace(J, tt), "~=" === t[2] && (t[3] = " " + t[3] + " "), t.slice(0, 4)
                    },
                    CHILD: function(t) {
                        return t[1] = t[1].toLowerCase(), "nth" === t[1].slice(0, 3) ? (t[3] || ot.error(t[0]), t[4] = +(t[4] ? t[5] + (t[6] || 1) : 2 * ("even" === t[3] || "odd" === t[3])), t[5] = +(t[7] + t[8] || "odd" === t[3])) : t[3] && ot.error(t[0]), t
                    },
                    PSEUDO: function(t) {
                        var e, i = !t[6] && t[2];
                        return G.CHILD.test(t[0]) ? null : (t[3] ? t[2] = t[4] || t[5] || "" : i && U.test(i) && (e = f(i, !0)) && (e = i.indexOf(")", i.length - e) - i.length) && (t[0] = t[0].slice(0, e), t[2] = i.slice(0, e)), t.slice(0, 3))
                    }
                },
                filter: {
                    TAG: function(t) {
                        var e = t.replace(J, tt).toLowerCase();
                        return "*" === t ? function() {
                            return !0
                        } : function(t) {
                            return t.nodeName && t.nodeName.toLowerCase() === e
                        }
                    },
                    CLASS: function(t) {
                        var e = d[t + " "];
                        return e || (e = new RegExp("(^|" + z + ")" + t + "(" + z + "|$)")) && d(t, function(t) {
                            return e.test("string" == typeof t.className && t.className || void 0 !== t.getAttribute && t.getAttribute("class") || "")
                        })
                    },
                    ATTR: function(i, n, s) {
                        return function(t) {
                            var e = ot.attr(t, i);
                            return null == e ? "!=" === n : !n || (e += "", "=" === n ? e === s : "!=" === n ? e !== s : "^=" === n ? s && 0 === e.indexOf(s) : "*=" === n ? s && -1 < e.indexOf(s) : "$=" === n ? s && e.slice(-s.length) === s : "~=" === n ? -1 < (" " + e.replace(H, " ") + " ").indexOf(s) : "|=" === n && (e === s || e.slice(0, s.length + 1) === s + "-"))
                        }
                    },
                    CHILD: function(f, t, e, m, g) {
                        var v = "nth" !== f.slice(0, 3),
                            _ = "last" !== f.slice(-4),
                            y = "of-type" === t;
                        return 1 === m && 0 === g ? function(t) {
                            return !!t.parentNode
                        } : function(t, e, i) {
                            var n, s, o, r, a, l, c = v !== _ ? "nextSibling" : "previousSibling",
                                h = t.parentNode,
                                u = y && t.nodeName.toLowerCase(),
                                d = !i && !y,
                                p = !1;
                            if (h) {
                                if (v) {
                                    for (; c;) {
                                        for (r = t; r = r[c];)
                                            if (y ? r.nodeName.toLowerCase() === u : 1 === r.nodeType) return !1;
                                        l = c = "only" === f && !l && "nextSibling"
                                    }
                                    return !0
                                }
                                if (l = [_ ? h.firstChild : h.lastChild], _ && d) {
                                    for (p = (a = (n = (s = (o = (r = h)[k] || (r[k] = {}))[r.uniqueID] || (o[r.uniqueID] = {}))[f] || [])[0] === T && n[1]) && n[2], r = a && h.childNodes[a]; r = ++a && r && r[c] || (p = a = 0) || l.pop();)
                                        if (1 === r.nodeType && ++p && r === t) {
                                            s[f] = [T, a, p];
                                            break
                                        }
                                } else if (d && (p = a = (n = (s = (o = (r = t)[k] || (r[k] = {}))[r.uniqueID] || (o[r.uniqueID] = {}))[f] || [])[0] === T && n[1]), !1 === p)
                                    for (;
                                        (r = ++a && r && r[c] || (p = a = 0) || l.pop()) && ((y ? r.nodeName.toLowerCase() !== u : 1 !== r.nodeType) || !++p || (d && ((s = (o = r[k] || (r[k] = {}))[r.uniqueID] || (o[r.uniqueID] = {}))[f] = [T, p]), r !== t)););
                                return (p -= g) === m || p % m == 0 && 0 <= p / m
                            }
                        }
                    },
                    PSEUDO: function(t, o) {
                        var e, r = b.pseudos[t] || b.setFilters[t.toLowerCase()] || ot.error("unsupported pseudo: " + t);
                        return r[k] ? r(o) : 1 < r.length ? (e = [t, t, "", o], b.setFilters.hasOwnProperty(t.toLowerCase()) ? at(function(t, e) {
                            for (var i, n = r(t, o), s = n.length; s--;) t[i = P(t, n[s])] = !(e[i] = n[s])
                        }) : function(t) {
                            return r(t, 0, e)
                        }) : r
                    }
                },
                pseudos: {
                    not: at(function(t) {
                        var n = [],
                            s = [],
                            a = u(t.replace(q, "$1"));
                        return a[k] ? at(function(t, e, i, n) {
                            for (var s, o = a(t, null, n, []), r = t.length; r--;)(s = o[r]) && (t[r] = !(e[r] = s))
                        }) : function(t, e, i) {
                            return n[0] = t, a(n, null, i, s), n[0] = null, !s.pop()
                        }
                    }),
                    has: at(function(e) {
                        return function(t) {
                            return 0 < ot(e, t).length
                        }
                    }),
                    contains: at(function(e) {
                        return e = e.replace(J, tt),
                            function(t) {
                                return -1 < (t.textContent || t.innerText || o(t)).indexOf(e)
                            }
                    }),
                    lang: at(function(i) {
                        return X.test(i || "") || ot.error("unsupported lang: " + i), i = i.replace(J, tt).toLowerCase(),
                            function(t) {
                                var e;
                                do {
                                    if (e = $ ? t.lang : t.getAttribute("xml:lang") || t.getAttribute("lang")) return (e = e.toLowerCase()) === i || 0 === e.indexOf(i + "-")
                                } while ((t = t.parentNode) && 1 === t.nodeType);
                                return !1
                            }
                    }),
                    target: function(t) {
                        var e = i.location && i.location.hash;
                        return e && e.slice(1) === t.id
                    },
                    root: function(t) {
                        return t === r
                    },
                    focus: function(t) {
                        return t === C.activeElement && (!C.hasFocus || C.hasFocus()) && !!(t.type || t.href || ~t.tabIndex)
                    },
                    enabled: pt(!1),
                    disabled: pt(!0),
                    checked: function(t) {
                        var e = t.nodeName.toLowerCase();
                        return "input" === e && !!t.checked || "option" === e && !!t.selected
                    },
                    selected: function(t) {
                        return t.parentNode && t.parentNode.selectedIndex, !0 === t.selected
                    },
                    empty: function(t) {
                        for (t = t.firstChild; t; t = t.nextSibling)
                            if (t.nodeType < 6) return !1;
                        return !0
                    },
                    parent: function(t) {
                        return !b.pseudos.empty(t)
                    },
                    header: function(t) {
                        return Q.test(t.nodeName)
                    },
                    input: function(t) {
                        return V.test(t.nodeName)
                    },
                    button: function(t) {
                        var e = t.nodeName.toLowerCase();
                        return "input" === e && "button" === t.type || "button" === e
                    },
                    text: function(t) {
                        var e;
                        return "input" === t.nodeName.toLowerCase() && "text" === t.type && (null == (e = t.getAttribute("type")) || "text" === e.toLowerCase())
                    },
                    first: ft(function() {
                        return [0]
                    }),
                    last: ft(function(t, e) {
                        return [e - 1]
                    }),
                    eq: ft(function(t, e, i) {
                        return [i < 0 ? i + e : i]
                    }),
                    even: ft(function(t, e) {
                        for (var i = 0; i < e; i += 2) t.push(i);
                        return t
                    }),
                    odd: ft(function(t, e) {
                        for (var i = 1; i < e; i += 2) t.push(i);
                        return t
                    }),
                    lt: ft(function(t, e, i) {
                        for (var n = i < 0 ? i + e : i; 0 <= --n;) t.push(n);
                        return t
                    }),
                    gt: ft(function(t, e, i) {
                        for (var n = i < 0 ? i + e : i; ++n < e;) t.push(n);
                        return t
                    })
                }
            }).pseudos.nth = b.pseudos.eq, {
                radio: !0,
                checkbox: !0,
                file: !0,
                password: !0,
                image: !0
            }) b.pseudos[t] = ut(t);
        for (t in {
                submit: !0,
                reset: !0
            }) b.pseudos[t] = dt(t);

        function gt() {}

        function vt(t) {
            for (var e = 0, i = t.length, n = ""; e < i; e++) n += t[e].value;
            return n
        }

        function _t(a, t, e) {
            var l = t.dir,
                c = t.next,
                h = c || l,
                u = e && "parentNode" === h,
                d = n++;
            return t.first ? function(t, e, i) {
                for (; t = t[l];)
                    if (1 === t.nodeType || u) return a(t, e, i);
                return !1
            } : function(t, e, i) {
                var n, s, o, r = [T, d];
                if (i) {
                    for (; t = t[l];)
                        if ((1 === t.nodeType || u) && a(t, e, i)) return !0
                } else
                    for (; t = t[l];)
                        if (1 === t.nodeType || u)
                            if (s = (o = t[k] || (t[k] = {}))[t.uniqueID] || (o[t.uniqueID] = {}), c && c === t.nodeName.toLowerCase()) t = t[l] || t;
                            else {
                                if ((n = s[h]) && n[0] === T && n[1] === d) return r[2] = n[2];
                                if ((s[h] = r)[2] = a(t, e, i)) return !0
                            } return !1
            }
        }

        function yt(s) {
            return 1 < s.length ? function(t, e, i) {
                for (var n = s.length; n--;)
                    if (!s[n](t, e, i)) return !1;
                return !0
            } : s[0]
        }

        function bt(t, e, i, n, s) {
            for (var o, r = [], a = 0, l = t.length, c = null != e; a < l; a++)(o = t[a]) && (i && !i(o, n, s) || (r.push(o), c && e.push(a)));
            return r
        }

        function xt(p, f, m, g, v, t) {
            return g && !g[k] && (g = xt(g)), v && !v[k] && (v = xt(v, t)), at(function(t, e, i, n) {
                var s, o, r, a = [],
                    l = [],
                    c = e.length,
                    h = t || function(t, e, i) {
                        for (var n = 0, s = e.length; n < s; n++) ot(t, e[n], i);
                        return i
                    }(f || "*", i.nodeType ? [i] : i, []),
                    u = !p || !t && f ? h : bt(h, a, p, i, n),
                    d = m ? v || (t ? p : c || g) ? [] : e : u;
                if (m && m(u, d, i, n), g)
                    for (s = bt(d, l), g(s, [], i, n), o = s.length; o--;)(r = s[o]) && (d[l[o]] = !(u[l[o]] = r));
                if (t) {
                    if (v || p) {
                        if (v) {
                            for (s = [], o = d.length; o--;)(r = d[o]) && s.push(u[o] = r);
                            v(null, d = [], s, n)
                        }
                        for (o = d.length; o--;)(r = d[o]) && -1 < (s = v ? P(t, r) : a[o]) && (t[s] = !(e[s] = r))
                    }
                } else d = bt(d === e ? d.splice(c, d.length) : d), v ? v(null, e, d, n) : N.apply(e, d)
            })
        }

        function wt(t) {
            for (var s, e, i, n = t.length, o = b.relative[t[0].type], r = o || b.relative[" "], a = o ? 1 : 0, l = _t(function(t) {
                    return t === s
                }, r, !0), c = _t(function(t) {
                    return -1 < P(s, t)
                }, r, !0), h = [function(t, e, i) {
                    var n = !o && (i || e !== x) || ((s = e).nodeType ? l(t, e, i) : c(t, e, i));
                    return s = null, n
                }]; a < n; a++)
                if (e = b.relative[t[a].type]) h = [_t(yt(h), e)];
                else {
                    if ((e = b.filter[t[a].type].apply(null, t[a].matches))[k]) {
                        for (i = ++a; i < n && !b.relative[t[i].type]; i++);
                        return xt(1 < a && yt(h), 1 < a && vt(t.slice(0, a - 1).concat({
                            value: " " === t[a - 2].type ? "*" : ""
                        })).replace(q, "$1"), e, a < i && wt(t.slice(a, i)), i < n && wt(t = t.slice(i)), i < n && vt(t))
                    }
                    h.push(e)
                } return yt(h)
        }
        return gt.prototype = b.filters = b.pseudos, b.setFilters = new gt, f = ot.tokenize = function(t, e) {
            var i, n, s, o, r, a, l, c = y[t + " "];
            if (c) return e ? 0 : c.slice(0);
            for (r = t, a = [], l = b.preFilter; r;) {
                for (o in i && !(n = R.exec(r)) || (n && (r = r.slice(n[0].length) || r), a.push(s = [])), i = !1, (n = W.exec(r)) && (i = n.shift(), s.push({
                        value: i,
                        type: n[0].replace(q, " ")
                    }), r = r.slice(i.length)), b.filter) !(n = G[o].exec(r)) || l[o] && !(n = l[o](n)) || (i = n.shift(), s.push({
                    value: i,
                    type: o,
                    matches: n
                }), r = r.slice(i.length));
                if (!i) break
            }
            return e ? r.length : r ? ot.error(t) : y(t, a).slice(0)
        }, u = ot.compile = function(t, e) {
            var i, g, v, _, y, n, s = [],
                o = [],
                r = E[t + " "];
            if (!r) {
                for (e || (e = f(t)), i = e.length; i--;)(r = wt(e[i]))[k] ? s.push(r) : o.push(r);
                (r = E(t, (g = o, _ = 0 < (v = s).length, y = 0 < g.length, n = function(t, e, i, n, s) {
                    var o, r, a, l = 0,
                        c = "0",
                        h = t && [],
                        u = [],
                        d = x,
                        p = t || y && b.find.TAG("*", s),
                        f = T += null == d ? 1 : Math.random() || .1,
                        m = p.length;
                    for (s && (x = e === C || e || s); c !== m && null != (o = p[c]); c++) {
                        if (y && o) {
                            for (r = 0, e || o.ownerDocument === C || (w(o), i = !$); a = g[r++];)
                                if (a(o, e || C, i)) {
                                    n.push(o);
                                    break
                                } s && (T = f)
                        }
                        _ && ((o = !a && o) && l--, t && h.push(o))
                    }
                    if (l += c, _ && c !== l) {
                        for (r = 0; a = v[r++];) a(h, u, e, i);
                        if (t) {
                            if (0 < l)
                                for (; c--;) h[c] || u[c] || (u[c] = F.call(n));
                            u = bt(u)
                        }
                        N.apply(n, u), s && !t && 0 < u.length && 1 < l + v.length && ot.uniqueSort(n)
                    }
                    return s && (T = f, x = d), h
                }, _ ? at(n) : n))).selector = t
            }
            return r
        }, m = ot.select = function(t, e, i, n) {
            var s, o, r, a, l, c = "function" == typeof t && t,
                h = !n && f(t = c.selector || t);
            if (i = i || [], 1 === h.length) {
                if (2 < (o = h[0] = h[0].slice(0)).length && "ID" === (r = o[0]).type && 9 === e.nodeType && $ && b.relative[o[1].type]) {
                    if (!(e = (b.find.ID(r.matches[0].replace(J, tt), e) || [])[0])) return i;
                    c && (e = e.parentNode), t = t.slice(o.shift().value.length)
                }
                for (s = G.needsContext.test(t) ? 0 : o.length; s-- && (r = o[s], !b.relative[a = r.type]);)
                    if ((l = b.find[a]) && (n = l(r.matches[0].replace(J, tt), K.test(o[0].type) && mt(e.parentNode) || e))) {
                        if (o.splice(s, 1), !(t = n.length && vt(o))) return N.apply(i, n), i;
                        break
                    }
            }
            return (c || u(t, h))(n, e, !$, i, !e || K.test(t) && mt(e.parentNode) || e), i
        }, p.sortStable = k.split("").sort(S).join("") === k, p.detectDuplicates = !!c, w(), p.sortDetached = lt(function(t) {
            return 1 & t.compareDocumentPosition(C.createElement("fieldset"))
        }), lt(function(t) {
            return t.innerHTML = "<a href='#'></a>", "#" === t.firstChild.getAttribute("href")
        }) || ct("type|href|height|width", function(t, e, i) {
            if (!i) return t.getAttribute(e, "type" === e.toLowerCase() ? 1 : 2)
        }), p.attributes && lt(function(t) {
            return t.innerHTML = "<input/>", t.firstChild.setAttribute("value", ""), "" === t.firstChild.getAttribute("value")
        }) || ct("value", function(t, e, i) {
            if (!i && "input" === t.nodeName.toLowerCase()) return t.defaultValue
        }), lt(function(t) {
            return null == t.getAttribute("disabled")
        }) || ct(A, function(t, e, i) {
            var n;
            if (!i) return !0 === t[e] ? e.toLowerCase() : (n = t.getAttributeNode(e)) && n.specified ? n.value : null
        }), ot
    }(C);
    k.find = b, k.expr = b.selectors, k.expr[":"] = k.expr.pseudos, k.uniqueSort = k.unique = b.uniqueSort, k.text = b.getText, k.isXMLDoc = b.isXML, k.contains = b.contains, k.escapeSelector = b.escape;
    var x = function(t, e, i) {
            for (var n = [], s = void 0 !== i;
                (t = t[e]) && 9 !== t.nodeType;)
                if (1 === t.nodeType) {
                    if (s && k(t).is(i)) break;
                    n.push(t)
                } return n
        },
        w = function(t, e) {
            for (var i = []; t; t = t.nextSibling) 1 === t.nodeType && t !== e && i.push(t);
            return i
        },
        T = k.expr.match.needsContext,
        E = /^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i,
        S = /^.[^:#\[\.,]*$/;

    function j(t, i, n) {
        return k.isFunction(i) ? k.grep(t, function(t, e) {
            return !!i.call(t, e, t) !== n
        }) : i.nodeType ? k.grep(t, function(t) {
            return t === i !== n
        }) : "string" != typeof i ? k.grep(t, function(t) {
            return -1 < s.call(i, t) !== n
        }) : S.test(i) ? k.filter(i, t, n) : (i = k.filter(i, t), k.grep(t, function(t) {
            return -1 < s.call(i, t) !== n && 1 === t.nodeType
        }))
    }
    k.filter = function(t, e, i) {
        var n = e[0];
        return i && (t = ":not(" + t + ")"), 1 === e.length && 1 === n.nodeType ? k.find.matchesSelector(n, t) ? [n] : [] : k.find.matches(t, k.grep(e, function(t) {
            return 1 === t.nodeType
        }))
    }, k.fn.extend({
        find: function(t) {
            var e, i, n = this.length,
                s = this;
            if ("string" != typeof t) return this.pushStack(k(t).filter(function() {
                for (e = 0; e < n; e++)
                    if (k.contains(s[e], this)) return !0
            }));
            for (i = this.pushStack([]), e = 0; e < n; e++) k.find(t, s[e], i);
            return 1 < n ? k.uniqueSort(i) : i
        },
        filter: function(t) {
            return this.pushStack(j(this, t || [], !1))
        },
        not: function(t) {
            return this.pushStack(j(this, t || [], !0))
        },
        is: function(t) {
            return !!j(this, "string" == typeof t && T.test(t) ? k(t) : t || [], !1).length
        }
    });
    var F, D = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;
    (k.fn.init = function(t, e, i) {
        var n, s;
        if (!t) return this;
        if (i = i || F, "string" == typeof t) {
            if (!(n = "<" === t[0] && ">" === t[t.length - 1] && 3 <= t.length ? [null, t, null] : D.exec(t)) || !n[1] && e) return !e || e.jquery ? (e || i).find(t) : this.constructor(e).find(t);
            if (n[1]) {
                if (e = e instanceof k ? e[0] : e, k.merge(this, k.parseHTML(n[1], e && e.nodeType ? e.ownerDocument || e : $, !0)), E.test(n[1]) && k.isPlainObject(e))
                    for (n in e) k.isFunction(this[n]) ? this[n](e[n]) : this.attr(n, e[n]);
                return this
            }
            return (s = $.getElementById(n[2])) && (this[0] = s, this.length = 1), this
        }
        return t.nodeType ? (this[0] = t, this.length = 1, this) : k.isFunction(t) ? void 0 !== i.ready ? i.ready(t) : t(k) : k.makeArray(t, this)
    }).prototype = k.fn, F = k($);
    var N = /^(?:parents|prev(?:Until|All))/,
        I = {
            children: !0,
            contents: !0,
            next: !0,
            prev: !0
        };

    function P(t, e) {
        for (;
            (t = t[e]) && 1 !== t.nodeType;);
        return t
    }
    k.fn.extend({
        has: function(t) {
            var e = k(t, this),
                i = e.length;
            return this.filter(function() {
                for (var t = 0; t < i; t++)
                    if (k.contains(this, e[t])) return !0
            })
        },
        closest: function(t, e) {
            var i, n = 0,
                s = this.length,
                o = [],
                r = "string" != typeof t && k(t);
            if (!T.test(t))
                for (; n < s; n++)
                    for (i = this[n]; i && i !== e; i = i.parentNode)
                        if (i.nodeType < 11 && (r ? -1 < r.index(i) : 1 === i.nodeType && k.find.matchesSelector(i, t))) {
                            o.push(i);
                            break
                        } return this.pushStack(1 < o.length ? k.uniqueSort(o) : o)
        },
        index: function(t) {
            return t ? "string" == typeof t ? s.call(k(t), this[0]) : s.call(this, t.jquery ? t[0] : t) : this[0] && this[0].parentNode ? this.first().prevAll().length : -1
        },
        add: function(t, e) {
            return this.pushStack(k.uniqueSort(k.merge(this.get(), k(t, e))))
        },
        addBack: function(t) {
            return this.add(null == t ? this.prevObject : this.prevObject.filter(t))
        }
    }), k.each({
        parent: function(t) {
            var e = t.parentNode;
            return e && 11 !== e.nodeType ? e : null
        },
        parents: function(t) {
            return x(t, "parentNode")
        },
        parentsUntil: function(t, e, i) {
            return x(t, "parentNode", i)
        },
        next: function(t) {
            return P(t, "nextSibling")
        },
        prev: function(t) {
            return P(t, "previousSibling")
        },
        nextAll: function(t) {
            return x(t, "nextSibling")
        },
        prevAll: function(t) {
            return x(t, "previousSibling")
        },
        nextUntil: function(t, e, i) {
            return x(t, "nextSibling", i)
        },
        prevUntil: function(t, e, i) {
            return x(t, "previousSibling", i)
        },
        siblings: function(t) {
            return w((t.parentNode || {}).firstChild, t)
        },
        children: function(t) {
            return w(t.firstChild)
        },
        contents: function(t) {
            return t.contentDocument || k.merge([], t.childNodes)
        }
    }, function(n, s) {
        k.fn[n] = function(t, e) {
            var i = k.map(this, s, t);
            return "Until" !== n.slice(-5) && (e = t), e && "string" == typeof e && (i = k.filter(e, i)), 1 < this.length && (I[n] || k.uniqueSort(i), N.test(n) && i.reverse()), this.pushStack(i)
        }
    });
    var A = /[^\x20\t\r\n\f]+/g;

    function z(t) {
        return t
    }

    function M(t) {
        throw t
    }

    function L(t, e, i) {
        var n;
        try {
            t && k.isFunction(n = t.promise) ? n.call(t).done(e).fail(i) : t && k.isFunction(n = t.then) ? n.call(t, e, i) : e.call(void 0, t)
        } catch (t) {
            i.call(void 0, t)
        }
    }
    k.Callbacks = function(n) {
        var t, i;
        n = "string" == typeof n ? (t = n, i = {}, k.each(t.match(A) || [], function(t, e) {
            i[e] = !0
        }), i) : k.extend({}, n);
        var s, e, o, r, a = [],
            l = [],
            c = -1,
            h = function() {
                for (r = n.once, o = s = !0; l.length; c = -1)
                    for (e = l.shift(); ++c < a.length;) !1 === a[c].apply(e[0], e[1]) && n.stopOnFalse && (c = a.length, e = !1);
                n.memory || (e = !1), s = !1, r && (a = e ? [] : "")
            },
            u = {
                add: function() {
                    return a && (e && !s && (c = a.length - 1, l.push(e)), function i(t) {
                        k.each(t, function(t, e) {
                            k.isFunction(e) ? n.unique && u.has(e) || a.push(e) : e && e.length && "string" !== k.type(e) && i(e)
                        })
                    }(arguments), e && !s && h()), this
                },
                remove: function() {
                    return k.each(arguments, function(t, e) {
                        for (var i; - 1 < (i = k.inArray(e, a, i));) a.splice(i, 1), i <= c && c--
                    }), this
                },
                has: function(t) {
                    return t ? -1 < k.inArray(t, a) : 0 < a.length
                },
                empty: function() {
                    return a && (a = []), this
                },
                disable: function() {
                    return r = l = [], a = e = "", this
                },
                disabled: function() {
                    return !a
                },
                lock: function() {
                    return r = l = [], e || s || (a = e = ""), this
                },
                locked: function() {
                    return !!r
                },
                fireWith: function(t, e) {
                    return r || (e = [t, (e = e || []).slice ? e.slice() : e], l.push(e), s || h()), this
                },
                fire: function() {
                    return u.fireWith(this, arguments), this
                },
                fired: function() {
                    return !!o
                }
            };
        return u
    }, k.extend({
        Deferred: function(t) {
            var o = [
                    ["notify", "progress", k.Callbacks("memory"), k.Callbacks("memory"), 2],
                    ["resolve", "done", k.Callbacks("once memory"), k.Callbacks("once memory"), 0, "resolved"],
                    ["reject", "fail", k.Callbacks("once memory"), k.Callbacks("once memory"), 1, "rejected"]
                ],
                s = "pending",
                r = {
                    state: function() {
                        return s
                    },
                    always: function() {
                        return a.done(arguments).fail(arguments), this
                    },
                    catch: function(t) {
                        return r.then(null, t)
                    },
                    pipe: function() {
                        var s = arguments;
                        return k.Deferred(function(n) {
                            k.each(o, function(t, e) {
                                var i = k.isFunction(s[e[4]]) && s[e[4]];
                                a[e[1]](function() {
                                    var t = i && i.apply(this, arguments);
                                    t && k.isFunction(t.promise) ? t.promise().progress(n.notify).done(n.resolve).fail(n.reject) : n[e[0] + "With"](this, i ? [t] : arguments)
                                })
                            }), s = null
                        }).promise()
                    },
                    then: function(e, i, n) {
                        var l = 0;

                        function c(s, o, r, a) {
                            return function() {
                                var i = this,
                                    n = arguments,
                                    t = function() {
                                        var t, e;
                                        if (!(s < l)) {
                                            if ((t = r.apply(i, n)) === o.promise()) throw new TypeError("Thenable self-resolution");
                                            e = t && ("object" == typeof t || "function" == typeof t) && t.then, k.isFunction(e) ? a ? e.call(t, c(l, o, z, a), c(l, o, M, a)) : (l++, e.call(t, c(l, o, z, a), c(l, o, M, a), c(l, o, z, o.notifyWith))) : (r !== z && (i = void 0, n = [t]), (a || o.resolveWith)(i, n))
                                        }
                                    },
                                    e = a ? t : function() {
                                        try {
                                            t()
                                        } catch (t) {
                                            k.Deferred.exceptionHook && k.Deferred.exceptionHook(t, e.stackTrace), l <= s + 1 && (r !== M && (i = void 0, n = [t]), o.rejectWith(i, n))
                                        }
                                    };
                                s ? e() : (k.Deferred.getStackHook && (e.stackTrace = k.Deferred.getStackHook()), C.setTimeout(e))
                            }
                        }
                        return k.Deferred(function(t) {
                            o[0][3].add(c(0, t, k.isFunction(n) ? n : z, t.notifyWith)), o[1][3].add(c(0, t, k.isFunction(e) ? e : z)), o[2][3].add(c(0, t, k.isFunction(i) ? i : M))
                        }).promise()
                    },
                    promise: function(t) {
                        return null != t ? k.extend(t, r) : r
                    }
                },
                a = {};
            return k.each(o, function(t, e) {
                var i = e[2],
                    n = e[5];
                r[e[1]] = i.add, n && i.add(function() {
                    s = n
                }, o[3 - t][2].disable, o[0][2].lock), i.add(e[3].fire), a[e[0]] = function() {
                    return a[e[0] + "With"](this === a ? void 0 : this, arguments), this
                }, a[e[0] + "With"] = i.fireWith
            }), r.promise(a), t && t.call(a, a), a
        },
        when: function(t) {
            var i = arguments.length,
                e = i,
                n = Array(e),
                s = a.call(arguments),
                o = k.Deferred(),
                r = function(e) {
                    return function(t) {
                        n[e] = this, s[e] = 1 < arguments.length ? a.call(arguments) : t, --i || o.resolveWith(n, s)
                    }
                };
            if (i <= 1 && (L(t, o.done(r(e)).resolve, o.reject), "pending" === o.state() || k.isFunction(s[e] && s[e].then))) return o.then();
            for (; e--;) L(s[e], r(e), o.reject);
            return o.promise()
        }
    });
    var O = /^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;
    k.Deferred.exceptionHook = function(t, e) {
        C.console && C.console.warn && t && O.test(t.name) && C.console.warn("jQuery.Deferred exception: " + t.message, t.stack, e)
    }, k.readyException = function(t) {
        C.setTimeout(function() {
            throw t
        })
    };
    var H = k.Deferred();

    function q() {
        $.removeEventListener("DOMContentLoaded", q), C.removeEventListener("load", q), k.ready()
    }
    k.fn.ready = function(t) {
        return H.then(t).catch(function(t) {
            k.readyException(t)
        }), this
    }, k.extend({
        isReady: !1,
        readyWait: 1,
        holdReady: function(t) {
            t ? k.readyWait++ : k.ready(!0)
        },
        ready: function(t) {
            (!0 === t ? --k.readyWait : k.isReady) || ((k.isReady = !0) !== t && 0 < --k.readyWait || H.resolveWith($, [k]))
        }
    }), k.ready.then = H.then, "complete" === $.readyState || "loading" !== $.readyState && !$.documentElement.doScroll ? C.setTimeout(k.ready) : ($.addEventListener("DOMContentLoaded", q), C.addEventListener("load", q));
    var R = function(t, e, i, n, s, o, r) {
            var a = 0,
                l = t.length,
                c = null == i;
            if ("object" === k.type(i))
                for (a in s = !0, i) R(t, e, a, i[a], !0, o, r);
            else if (void 0 !== n && (s = !0, k.isFunction(n) || (r = !0), c && (r ? (e.call(t, n), e = null) : (c = e, e = function(t, e, i) {
                    return c.call(k(t), i)
                })), e))
                for (; a < l; a++) e(t[a], i, r ? n : n.call(t[a], a, e(t[a], i)));
            return s ? t : c ? e.call(t) : l ? e(t[0], i) : o
        },
        W = function(t) {
            return 1 === t.nodeType || 9 === t.nodeType || !+t.nodeType
        };

    function B() {
        this.expando = k.expando + B.uid++
    }
    B.uid = 1, B.prototype = {
        cache: function(t) {
            var e = t[this.expando];
            return e || (e = {}, W(t) && (t.nodeType ? t[this.expando] = e : Object.defineProperty(t, this.expando, {
                value: e,
                configurable: !0
            }))), e
        },
        set: function(t, e, i) {
            var n, s = this.cache(t);
            if ("string" == typeof e) s[k.camelCase(e)] = i;
            else
                for (n in e) s[k.camelCase(n)] = e[n];
            return s
        },
        get: function(t, e) {
            return void 0 === e ? this.cache(t) : t[this.expando] && t[this.expando][k.camelCase(e)]
        },
        access: function(t, e, i) {
            return void 0 === e || e && "string" == typeof e && void 0 === i ? this.get(t, e) : (this.set(t, e, i), void 0 !== i ? i : e)
        },
        remove: function(t, e) {
            var i, n = t[this.expando];
            if (void 0 !== n) {
                if (void 0 !== e) {
                    k.isArray(e) ? e = e.map(k.camelCase) : e = (e = k.camelCase(e)) in n ? [e] : e.match(A) || [], i = e.length;
                    for (; i--;) delete n[e[i]]
                }(void 0 === e || k.isEmptyObject(n)) && (t.nodeType ? t[this.expando] = void 0 : delete t[this.expando])
            }
        },
        hasData: function(t) {
            var e = t[this.expando];
            return void 0 !== e && !k.isEmptyObject(e)
        }
    };
    var U = new B,
        X = new B,
        G = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,
        V = /[A-Z]/g;

    function Q(t, e, i) {
        var n, s;
        if (void 0 === i && 1 === t.nodeType)
            if (n = "data-" + e.replace(V, "-$&").toLowerCase(), "string" == typeof(i = t.getAttribute(n))) {
                try {
                    i = "true" === (s = i) || "false" !== s && ("null" === s ? null : s === +s + "" ? +s : G.test(s) ? JSON.parse(s) : s)
                } catch (t) {}
                X.set(t, e, i)
            } else i = void 0;
        return i
    }
    k.extend({
        hasData: function(t) {
            return X.hasData(t) || U.hasData(t)
        },
        data: function(t, e, i) {
            return X.access(t, e, i)
        },
        removeData: function(t, e) {
            X.remove(t, e)
        },
        _data: function(t, e, i) {
            return U.access(t, e, i)
        },
        _removeData: function(t, e) {
            U.remove(t, e)
        }
    }), k.fn.extend({
        data: function(i, t) {
            var e, n, s, o = this[0],
                r = o && o.attributes;
            if (void 0 === i) {
                if (this.length && (s = X.get(o), 1 === o.nodeType && !U.get(o, "hasDataAttrs"))) {
                    for (e = r.length; e--;) r[e] && (0 === (n = r[e].name).indexOf("data-") && (n = k.camelCase(n.slice(5)), Q(o, n, s[n])));
                    U.set(o, "hasDataAttrs", !0)
                }
                return s
            }
            return "object" == typeof i ? this.each(function() {
                X.set(this, i)
            }) : R(this, function(t) {
                var e;
                if (o && void 0 === t) {
                    if (void 0 !== (e = X.get(o, i))) return e;
                    if (void 0 !== (e = Q(o, i))) return e
                } else this.each(function() {
                    X.set(this, i, t)
                })
            }, null, t, 1 < arguments.length, null, !0)
        },
        removeData: function(t) {
            return this.each(function() {
                X.remove(this, t)
            })
        }
    }), k.extend({
        queue: function(t, e, i) {
            var n;
            if (t) return e = (e || "fx") + "queue", n = U.get(t, e), i && (!n || k.isArray(i) ? n = U.access(t, e, k.makeArray(i)) : n.push(i)), n || []
        },
        dequeue: function(t, e) {
            e = e || "fx";
            var i = k.queue(t, e),
                n = i.length,
                s = i.shift(),
                o = k._queueHooks(t, e);
            "inprogress" === s && (s = i.shift(), n--), s && ("fx" === e && i.unshift("inprogress"), delete o.stop, s.call(t, function() {
                k.dequeue(t, e)
            }, o)), !n && o && o.empty.fire()
        },
        _queueHooks: function(t, e) {
            var i = e + "queueHooks";
            return U.get(t, i) || U.access(t, i, {
                empty: k.Callbacks("once memory").add(function() {
                    U.remove(t, [e + "queue", i])
                })
            })
        }
    }), k.fn.extend({
        queue: function(e, i) {
            var t = 2;
            return "string" != typeof e && (i = e, e = "fx", t--), arguments.length < t ? k.queue(this[0], e) : void 0 === i ? this : this.each(function() {
                var t = k.queue(this, e, i);
                k._queueHooks(this, e), "fx" === e && "inprogress" !== t[0] && k.dequeue(this, e)
            })
        },
        dequeue: function(t) {
            return this.each(function() {
                k.dequeue(this, t)
            })
        },
        clearQueue: function(t) {
            return this.queue(t || "fx", [])
        },
        promise: function(t, e) {
            var i, n = 1,
                s = k.Deferred(),
                o = this,
                r = this.length,
                a = function() {
                    --n || s.resolveWith(o, [o])
                };
            for ("string" != typeof t && (e = t, t = void 0), t = t || "fx"; r--;)(i = U.get(o[r], t + "queueHooks")) && i.empty && (n++, i.empty.add(a));
            return a(), s.promise(e)
        }
    });
    var Y = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,
        Z = new RegExp("^(?:([+-])=|)(" + Y + ")([a-z%]*)$", "i"),
        K = ["Top", "Right", "Bottom", "Left"],
        J = function(t, e) {
            return "none" === (t = e || t).style.display || "" === t.style.display && k.contains(t.ownerDocument, t) && "none" === k.css(t, "display")
        },
        tt = function(t, e, i, n) {
            var s, o, r = {};
            for (o in e) r[o] = t.style[o], t.style[o] = e[o];
            for (o in s = i.apply(t, n || []), e) t.style[o] = r[o];
            return s
        };

    function et(t, e, i, n) {
        var s, o = 1,
            r = 20,
            a = n ? function() {
                return n.cur()
            } : function() {
                return k.css(t, e, "")
            },
            l = a(),
            c = i && i[3] || (k.cssNumber[e] ? "" : "px"),
            h = (k.cssNumber[e] || "px" !== c && +l) && Z.exec(k.css(t, e));
        if (h && h[3] !== c)
            for (c = c || h[3], i = i || [], h = +l || 1; h /= o = o || ".5", k.style(t, e, h + c), o !== (o = a() / l) && 1 !== o && --r;);
        return i && (h = +h || +l || 0, s = i[1] ? h + (i[1] + 1) * i[2] : +i[2], n && (n.unit = c, n.start = h, n.end = s)), s
    }
    var it = {};

    function nt(t, e) {
        for (var i, n, s = [], o = 0, r = t.length; o < r; o++)(n = t[o]).style && (i = n.style.display, e ? ("none" === i && (s[o] = U.get(n, "display") || null, s[o] || (n.style.display = "")), "" === n.style.display && J(n) && (s[o] = (u = c = l = void 0, c = (a = n).ownerDocument, h = a.nodeName, (u = it[h]) || (l = c.body.appendChild(c.createElement(h)), u = k.css(l, "display"), l.parentNode.removeChild(l), "none" === u && (u = "block"), it[h] = u)))) : "none" !== i && (s[o] = "none", U.set(n, "display", i)));
        var a, l, c, h, u;
        for (o = 0; o < r; o++) null != s[o] && (t[o].style.display = s[o]);
        return t
    }
    k.fn.extend({
        show: function() {
            return nt(this, !0)
        },
        hide: function() {
            return nt(this)
        },
        toggle: function(t) {
            return "boolean" == typeof t ? t ? this.show() : this.hide() : this.each(function() {
                J(this) ? k(this).show() : k(this).hide()
            })
        }
    });
    var st = /^(?:checkbox|radio)$/i,
        ot = /<([a-z][^\/\0>\x20\t\r\n\f]+)/i,
        rt = /^$|\/(?:java|ecma)script/i,
        at = {
            option: [1, "<select multiple='multiple'>", "</select>"],
            thead: [1, "<table>", "</table>"],
            col: [2, "<table><colgroup>", "</colgroup></table>"],
            tr: [2, "<table><tbody>", "</tbody></table>"],
            td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
            _default: [0, "", ""]
        };

    function lt(t, e) {
        var i;
        return i = void 0 !== t.getElementsByTagName ? t.getElementsByTagName(e || "*") : void 0 !== t.querySelectorAll ? t.querySelectorAll(e || "*") : [], void 0 === e || e && k.nodeName(t, e) ? k.merge([t], i) : i
    }

    function ct(t, e) {
        for (var i = 0, n = t.length; i < n; i++) U.set(t[i], "globalEval", !e || U.get(e[i], "globalEval"))
    }
    at.optgroup = at.option, at.tbody = at.tfoot = at.colgroup = at.caption = at.thead, at.th = at.td;
    var ht, ut, dt = /<|&#?\w+;/;

    function pt(t, e, i, n, s) {
        for (var o, r, a, l, c, h, u = e.createDocumentFragment(), d = [], p = 0, f = t.length; p < f; p++)
            if ((o = t[p]) || 0 === o)
                if ("object" === k.type(o)) k.merge(d, o.nodeType ? [o] : o);
                else if (dt.test(o)) {
            for (r = r || u.appendChild(e.createElement("div")), a = (ot.exec(o) || ["", ""])[1].toLowerCase(), l = at[a] || at._default, r.innerHTML = l[1] + k.htmlPrefilter(o) + l[2], h = l[0]; h--;) r = r.lastChild;
            k.merge(d, r.childNodes), (r = u.firstChild).textContent = ""
        } else d.push(e.createTextNode(o));
        for (u.textContent = "", p = 0; o = d[p++];)
            if (n && -1 < k.inArray(o, n)) s && s.push(o);
            else if (c = k.contains(o.ownerDocument, o), r = lt(u.appendChild(o), "script"), c && ct(r), i)
            for (h = 0; o = r[h++];) rt.test(o.type || "") && i.push(o);
        return u
    }
    ht = $.createDocumentFragment().appendChild($.createElement("div")), (ut = $.createElement("input")).setAttribute("type", "radio"), ut.setAttribute("checked", "checked"), ut.setAttribute("name", "t"), ht.appendChild(ut), g.checkClone = ht.cloneNode(!0).cloneNode(!0).lastChild.checked, ht.innerHTML = "<textarea>x</textarea>", g.noCloneChecked = !!ht.cloneNode(!0).lastChild.defaultValue;
    var ft = $.documentElement,
        mt = /^key/,
        gt = /^(?:mouse|pointer|contextmenu|drag|drop)|click/,
        vt = /^([^.]*)(?:\.(.+)|)/;

    function _t() {
        return !0
    }

    function yt() {
        return !1
    }

    function bt() {
        try {
            return $.activeElement
        } catch (t) {}
    }

    function xt(t, e, i, n, s, o) {
        var r, a;
        if ("object" == typeof e) {
            for (a in "string" != typeof i && (n = n || i, i = void 0), e) xt(t, a, i, n, e[a], o);
            return t
        }
        if (null == n && null == s ? (s = i, n = i = void 0) : null == s && ("string" == typeof i ? (s = n, n = void 0) : (s = n, n = i, i = void 0)), !1 === s) s = yt;
        else if (!s) return t;
        return 1 === o && (r = s, (s = function(t) {
            return k().off(t), r.apply(this, arguments)
        }).guid = r.guid || (r.guid = k.guid++)), t.each(function() {
            k.event.add(this, e, s, n, i)
        })
    }
    k.event = {
        global: {},
        add: function(e, t, i, n, s) {
            var o, r, a, l, c, h, u, d, p, f, m, g = U.get(e);
            if (g)
                for (i.handler && (i = (o = i).handler, s = o.selector), s && k.find.matchesSelector(ft, s), i.guid || (i.guid = k.guid++), (l = g.events) || (l = g.events = {}), (r = g.handle) || (r = g.handle = function(t) {
                        return void 0 !== k && k.event.triggered !== t.type ? k.event.dispatch.apply(e, arguments) : void 0
                    }), c = (t = (t || "").match(A) || [""]).length; c--;) p = m = (a = vt.exec(t[c]) || [])[1], f = (a[2] || "").split(".").sort(), p && (u = k.event.special[p] || {}, p = (s ? u.delegateType : u.bindType) || p, u = k.event.special[p] || {}, h = k.extend({
                    type: p,
                    origType: m,
                    data: n,
                    handler: i,
                    guid: i.guid,
                    selector: s,
                    needsContext: s && k.expr.match.needsContext.test(s),
                    namespace: f.join(".")
                }, o), (d = l[p]) || ((d = l[p] = []).delegateCount = 0, u.setup && !1 !== u.setup.call(e, n, f, r) || e.addEventListener && e.addEventListener(p, r)), u.add && (u.add.call(e, h), h.handler.guid || (h.handler.guid = i.guid)), s ? d.splice(d.delegateCount++, 0, h) : d.push(h), k.event.global[p] = !0)
        },
        remove: function(t, e, i, n, s) {
            var o, r, a, l, c, h, u, d, p, f, m, g = U.hasData(t) && U.get(t);
            if (g && (l = g.events)) {
                for (c = (e = (e || "").match(A) || [""]).length; c--;)
                    if (p = m = (a = vt.exec(e[c]) || [])[1], f = (a[2] || "").split(".").sort(), p) {
                        for (u = k.event.special[p] || {}, d = l[p = (n ? u.delegateType : u.bindType) || p] || [], a = a[2] && new RegExp("(^|\\.)" + f.join("\\.(?:.*\\.|)") + "(\\.|$)"), r = o = d.length; o--;) h = d[o], !s && m !== h.origType || i && i.guid !== h.guid || a && !a.test(h.namespace) || n && n !== h.selector && ("**" !== n || !h.selector) || (d.splice(o, 1), h.selector && d.delegateCount--, u.remove && u.remove.call(t, h));
                        r && !d.length && (u.teardown && !1 !== u.teardown.call(t, f, g.handle) || k.removeEvent(t, p, g.handle), delete l[p])
                    } else
                        for (p in l) k.event.remove(t, p + e[c], i, n, !0);
                k.isEmptyObject(l) && U.remove(t, "handle events")
            }
        },
        dispatch: function(t) {
            var e, i, n, s, o, r, a = k.event.fix(t),
                l = new Array(arguments.length),
                c = (U.get(this, "events") || {})[a.type] || [],
                h = k.event.special[a.type] || {};
            for (l[0] = a, e = 1; e < arguments.length; e++) l[e] = arguments[e];
            if (a.delegateTarget = this, !h.preDispatch || !1 !== h.preDispatch.call(this, a)) {
                for (r = k.event.handlers.call(this, a, c), e = 0;
                    (s = r[e++]) && !a.isPropagationStopped();)
                    for (a.currentTarget = s.elem, i = 0;
                        (o = s.handlers[i++]) && !a.isImmediatePropagationStopped();) a.rnamespace && !a.rnamespace.test(o.namespace) || (a.handleObj = o, a.data = o.data, void 0 !== (n = ((k.event.special[o.origType] || {}).handle || o.handler).apply(s.elem, l)) && !1 === (a.result = n) && (a.preventDefault(), a.stopPropagation()));
                return h.postDispatch && h.postDispatch.call(this, a), a.result
            }
        },
        handlers: function(t, e) {
            var i, n, s, o, r, a = [],
                l = e.delegateCount,
                c = t.target;
            if (l && c.nodeType && !("click" === t.type && 1 <= t.button))
                for (; c !== this; c = c.parentNode || this)
                    if (1 === c.nodeType && ("click" !== t.type || !0 !== c.disabled)) {
                        for (o = [], r = {}, i = 0; i < l; i++) void 0 === r[s = (n = e[i]).selector + " "] && (r[s] = n.needsContext ? -1 < k(s, this).index(c) : k.find(s, this, null, [c]).length), r[s] && o.push(n);
                        o.length && a.push({
                            elem: c,
                            handlers: o
                        })
                    } return c = this, l < e.length && a.push({
                elem: c,
                handlers: e.slice(l)
            }), a
        },
        addProp: function(e, t) {
            Object.defineProperty(k.Event.prototype, e, {
                enumerable: !0,
                configurable: !0,
                get: k.isFunction(t) ? function() {
                    if (this.originalEvent) return t(this.originalEvent)
                } : function() {
                    if (this.originalEvent) return this.originalEvent[e]
                },
                set: function(t) {
                    Object.defineProperty(this, e, {
                        enumerable: !0,
                        configurable: !0,
                        writable: !0,
                        value: t
                    })
                }
            })
        },
        fix: function(t) {
            return t[k.expando] ? t : new k.Event(t)
        },
        special: {
            load: {
                noBubble: !0
            },
            focus: {
                trigger: function() {
                    if (this !== bt() && this.focus) return this.focus(), !1
                },
                delegateType: "focusin"
            },
            blur: {
                trigger: function() {
                    if (this === bt() && this.blur) return this.blur(), !1
                },
                delegateType: "focusout"
            },
            click: {
                trigger: function() {
                    if ("checkbox" === this.type && this.click && k.nodeName(this, "input")) return this.click(), !1
                },
                _default: function(t) {
                    return k.nodeName(t.target, "a")
                }
            },
            beforeunload: {
                postDispatch: function(t) {
                    void 0 !== t.result && t.originalEvent && (t.originalEvent.returnValue = t.result)
                }
            }
        }
    }, k.removeEvent = function(t, e, i) {
        t.removeEventListener && t.removeEventListener(e, i)
    }, k.Event = function(t, e) {
        return this instanceof k.Event ? (t && t.type ? (this.originalEvent = t, this.type = t.type, this.isDefaultPrevented = t.defaultPrevented || void 0 === t.defaultPrevented && !1 === t.returnValue ? _t : yt, this.target = t.target && 3 === t.target.nodeType ? t.target.parentNode : t.target, this.currentTarget = t.currentTarget, this.relatedTarget = t.relatedTarget) : this.type = t, e && k.extend(this, e), this.timeStamp = t && t.timeStamp || k.now(), void(this[k.expando] = !0)) : new k.Event(t, e)
    }, k.Event.prototype = {
        constructor: k.Event,
        isDefaultPrevented: yt,
        isPropagationStopped: yt,
        isImmediatePropagationStopped: yt,
        isSimulated: !1,
        preventDefault: function() {
            var t = this.originalEvent;
            this.isDefaultPrevented = _t, t && !this.isSimulated && t.preventDefault()
        },
        stopPropagation: function() {
            var t = this.originalEvent;
            this.isPropagationStopped = _t, t && !this.isSimulated && t.stopPropagation()
        },
        stopImmediatePropagation: function() {
            var t = this.originalEvent;
            this.isImmediatePropagationStopped = _t, t && !this.isSimulated && t.stopImmediatePropagation(), this.stopPropagation()
        }
    }, k.each({
        altKey: !0,
        bubbles: !0,
        cancelable: !0,
        changedTouches: !0,
        ctrlKey: !0,
        detail: !0,
        eventPhase: !0,
        metaKey: !0,
        pageX: !0,
        pageY: !0,
        shiftKey: !0,
        view: !0,
        char: !0,
        charCode: !0,
        key: !0,
        keyCode: !0,
        button: !0,
        buttons: !0,
        clientX: !0,
        clientY: !0,
        offsetX: !0,
        offsetY: !0,
        pointerId: !0,
        pointerType: !0,
        screenX: !0,
        screenY: !0,
        targetTouches: !0,
        toElement: !0,
        touches: !0,
        which: function(t) {
            var e = t.button;
            return null == t.which && mt.test(t.type) ? null != t.charCode ? t.charCode : t.keyCode : !t.which && void 0 !== e && gt.test(t.type) ? 1 & e ? 1 : 2 & e ? 3 : 4 & e ? 2 : 0 : t.which
        }
    }, k.event.addProp), k.each({
        mouseenter: "mouseover",
        mouseleave: "mouseout",
        pointerenter: "pointerover",
        pointerleave: "pointerout"
    }, function(t, s) {
        k.event.special[t] = {
            delegateType: s,
            bindType: s,
            handle: function(t) {
                var e, i = t.relatedTarget,
                    n = t.handleObj;
                return i && (i === this || k.contains(this, i)) || (t.type = n.origType, e = n.handler.apply(this, arguments), t.type = s), e
            }
        }
    }), k.fn.extend({
        on: function(t, e, i, n) {
            return xt(this, t, e, i, n)
        },
        one: function(t, e, i, n) {
            return xt(this, t, e, i, n, 1)
        },
        off: function(t, e, i) {
            var n, s;
            if (t && t.preventDefault && t.handleObj) return n = t.handleObj, k(t.delegateTarget).off(n.namespace ? n.origType + "." + n.namespace : n.origType, n.selector, n.handler), this;
            if ("object" == typeof t) {
                for (s in t) this.off(s, e, t[s]);
                return this
            }
            return !1 !== e && "function" != typeof e || (i = e, e = void 0), !1 === i && (i = yt), this.each(function() {
                k.event.remove(this, t, i, e)
            })
        }
    });
    var wt = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,
        Ct = /<script|<style|<link/i,
        $t = /checked\s*(?:[^=]|=\s*.checked.)/i,
        kt = /^true\/(.*)/,
        Tt = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;

    function Et(t, e) {
        return k.nodeName(t, "table") && k.nodeName(11 !== e.nodeType ? e : e.firstChild, "tr") && t.getElementsByTagName("tbody")[0] || t
    }

    function St(t) {
        return t.type = (null !== t.getAttribute("type")) + "/" + t.type, t
    }

    function jt(t) {
        var e = kt.exec(t.type);
        return e ? t.type = e[1] : t.removeAttribute("type"), t
    }

    function Ft(t, e) {
        var i, n, s, o, r, a, l, c;
        if (1 === e.nodeType) {
            if (U.hasData(t) && (o = U.access(t), r = U.set(e, o), c = o.events))
                for (s in delete r.handle, r.events = {}, c)
                    for (i = 0, n = c[s].length; i < n; i++) k.event.add(e, s, c[s][i]);
            X.hasData(t) && (a = X.access(t), l = k.extend({}, a), X.set(e, l))
        }
    }

    function Dt(i, n, s, o) {
        n = m.apply([], n);
        var t, e, r, a, l, c, h = 0,
            u = i.length,
            d = u - 1,
            p = n[0],
            f = k.isFunction(p);
        if (f || 1 < u && "string" == typeof p && !g.checkClone && $t.test(p)) return i.each(function(t) {
            var e = i.eq(t);
            f && (n[0] = p.call(this, t, e.html())), Dt(e, n, s, o)
        });
        if (u && (e = (t = pt(n, i[0].ownerDocument, !1, i, o)).firstChild, 1 === t.childNodes.length && (t = e), e || o)) {
            for (a = (r = k.map(lt(t, "script"), St)).length; h < u; h++) l = t, h !== d && (l = k.clone(l, !0, !0), a && k.merge(r, lt(l, "script"))), s.call(i[h], l, h);
            if (a)
                for (c = r[r.length - 1].ownerDocument, k.map(r, jt), h = 0; h < a; h++) l = r[h], rt.test(l.type || "") && !U.access(l, "globalEval") && k.contains(c, l) && (l.src ? k._evalUrl && k._evalUrl(l.src) : v(l.textContent.replace(Tt, ""), c))
        }
        return i
    }

    function Nt(t, e, i) {
        for (var n, s = e ? k.filter(e, t) : t, o = 0; null != (n = s[o]); o++) i || 1 !== n.nodeType || k.cleanData(lt(n)), n.parentNode && (i && k.contains(n.ownerDocument, n) && ct(lt(n, "script")), n.parentNode.removeChild(n));
        return t
    }
    k.extend({
        htmlPrefilter: function(t) {
            return t.replace(wt, "<$1></$2>")
        },
        clone: function(t, e, i) {
            var n, s, o, r, a, l, c, h = t.cloneNode(!0),
                u = k.contains(t.ownerDocument, t);
            if (!(g.noCloneChecked || 1 !== t.nodeType && 11 !== t.nodeType || k.isXMLDoc(t)))
                for (r = lt(h), n = 0, s = (o = lt(t)).length; n < s; n++) a = o[n], l = r[n], void 0, "input" === (c = l.nodeName.toLowerCase()) && st.test(a.type) ? l.checked = a.checked : "input" !== c && "textarea" !== c || (l.defaultValue = a.defaultValue);
            if (e)
                if (i)
                    for (o = o || lt(t), r = r || lt(h), n = 0, s = o.length; n < s; n++) Ft(o[n], r[n]);
                else Ft(t, h);
            return 0 < (r = lt(h, "script")).length && ct(r, !u && lt(t, "script")), h
        },
        cleanData: function(t) {
            for (var e, i, n, s = k.event.special, o = 0; void 0 !== (i = t[o]); o++)
                if (W(i)) {
                    if (e = i[U.expando]) {
                        if (e.events)
                            for (n in e.events) s[n] ? k.event.remove(i, n) : k.removeEvent(i, n, e.handle);
                        i[U.expando] = void 0
                    }
                    i[X.expando] && (i[X.expando] = void 0)
                }
        }
    }), k.fn.extend({
        detach: function(t) {
            return Nt(this, t, !0)
        },
        remove: function(t) {
            return Nt(this, t)
        },
        text: function(t) {
            return R(this, function(t) {
                return void 0 === t ? k.text(this) : this.empty().each(function() {
                    1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || (this.textContent = t)
                })
            }, null, t, arguments.length)
        },
        append: function() {
            return Dt(this, arguments, function(t) {
                1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || Et(this, t).appendChild(t)
            })
        },
        prepend: function() {
            return Dt(this, arguments, function(t) {
                if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                    var e = Et(this, t);
                    e.insertBefore(t, e.firstChild)
                }
            })
        },
        before: function() {
            return Dt(this, arguments, function(t) {
                this.parentNode && this.parentNode.insertBefore(t, this)
            })
        },
        after: function() {
            return Dt(this, arguments, function(t) {
                this.parentNode && this.parentNode.insertBefore(t, this.nextSibling)
            })
        },
        empty: function() {
            for (var t, e = 0; null != (t = this[e]); e++) 1 === t.nodeType && (k.cleanData(lt(t, !1)), t.textContent = "");
            return this
        },
        clone: function(t, e) {
            return t = null != t && t, e = null == e ? t : e, this.map(function() {
                return k.clone(this, t, e)
            })
        },
        html: function(t) {
            return R(this, function(t) {
                var e = this[0] || {},
                    i = 0,
                    n = this.length;
                if (void 0 === t && 1 === e.nodeType) return e.innerHTML;
                if ("string" == typeof t && !Ct.test(t) && !at[(ot.exec(t) || ["", ""])[1].toLowerCase()]) {
                    t = k.htmlPrefilter(t);
                    try {
                        for (; i < n; i++) 1 === (e = this[i] || {}).nodeType && (k.cleanData(lt(e, !1)), e.innerHTML = t);
                        e = 0
                    } catch (t) {}
                }
                e && this.empty().append(t)
            }, null, t, arguments.length)
        },
        replaceWith: function() {
            var i = [];
            return Dt(this, arguments, function(t) {
                var e = this.parentNode;
                k.inArray(this, i) < 0 && (k.cleanData(lt(this)), e && e.replaceChild(t, this))
            }, i)
        }
    }), k.each({
        appendTo: "append",
        prependTo: "prepend",
        insertBefore: "before",
        insertAfter: "after",
        replaceAll: "replaceWith"
    }, function(t, r) {
        k.fn[t] = function(t) {
            for (var e, i = [], n = k(t), s = n.length - 1, o = 0; o <= s; o++) e = o === s ? this : this.clone(!0), k(n[o])[r](e), l.apply(i, e.get());
            return this.pushStack(i)
        }
    });
    var It = /^margin/,
        Pt = new RegExp("^(" + Y + ")(?!px)[a-z%]+$", "i"),
        At = function(t) {
            var e = t.ownerDocument.defaultView;
            return e && e.opener || (e = C), e.getComputedStyle(t)
        };

    function zt(t, e, i) {
        var n, s, o, r, a = t.style;
        return (i = i || At(t)) && ("" !== (r = i.getPropertyValue(e) || i[e]) || k.contains(t.ownerDocument, t) || (r = k.style(t, e)), !g.pixelMarginRight() && Pt.test(r) && It.test(e) && (n = a.width, s = a.minWidth, o = a.maxWidth, a.minWidth = a.maxWidth = a.width = r, r = i.width, a.width = n, a.minWidth = s, a.maxWidth = o)), void 0 !== r ? r + "" : r
    }

    function Mt(t, e) {
        return {
            get: function() {
                return t() ? void delete this.get : (this.get = e).apply(this, arguments)
            }
        }
    }! function() {
        function t() {
            if (r) {
                r.style.cssText = "box-sizing:border-box;position:relative;display:block;margin:auto;border:1px;padding:1px;top:1%;width:50%", r.innerHTML = "", ft.appendChild(o);
                var t = C.getComputedStyle(r);
                e = "1%" !== t.top, s = "2px" === t.marginLeft, i = "4px" === t.width, r.style.marginRight = "50%", n = "4px" === t.marginRight, ft.removeChild(o), r = null
            }
        }
        var e, i, n, s, o = $.createElement("div"),
            r = $.createElement("div");
        r.style && (r.style.backgroundClip = "content-box", r.cloneNode(!0).style.backgroundClip = "", g.clearCloneStyle = "content-box" === r.style.backgroundClip, o.style.cssText = "border:0;width:8px;height:0;top:0;left:-9999px;padding:0;margin-top:1px;position:absolute", o.appendChild(r), k.extend(g, {
            pixelPosition: function() {
                return t(), e
            },
            boxSizingReliable: function() {
                return t(), i
            },
            pixelMarginRight: function() {
                return t(), n
            },
            reliableMarginLeft: function() {
                return t(), s
            }
        }))
    }();
    var Lt = /^(none|table(?!-c[ea]).+)/,
        Ot = {
            position: "absolute",
            visibility: "hidden",
            display: "block"
        },
        Ht = {
            letterSpacing: "0",
            fontWeight: "400"
        },
        qt = ["Webkit", "Moz", "ms"],
        Rt = $.createElement("div").style;

    function Wt(t) {
        if (t in Rt) return t;
        for (var e = t[0].toUpperCase() + t.slice(1), i = qt.length; i--;)
            if ((t = qt[i] + e) in Rt) return t
    }

    function Bt(t, e, i) {
        var n = Z.exec(e);
        return n ? Math.max(0, n[2] - (i || 0)) + (n[3] || "px") : e
    }

    function Ut(t, e, i, n, s) {
        var o, r = 0;
        for (o = i === (n ? "border" : "content") ? 4 : "width" === e ? 1 : 0; o < 4; o += 2) "margin" === i && (r += k.css(t, i + K[o], !0, s)), n ? ("content" === i && (r -= k.css(t, "padding" + K[o], !0, s)), "margin" !== i && (r -= k.css(t, "border" + K[o] + "Width", !0, s))) : (r += k.css(t, "padding" + K[o], !0, s), "padding" !== i && (r += k.css(t, "border" + K[o] + "Width", !0, s)));
        return r
    }

    function Xt(t, e, i) {
        var n, s = !0,
            o = At(t),
            r = "border-box" === k.css(t, "boxSizing", !1, o);
        if (t.getClientRects().length && (n = t.getBoundingClientRect()[e]), n <= 0 || null == n) {
            if (((n = zt(t, e, o)) < 0 || null == n) && (n = t.style[e]), Pt.test(n)) return n;
            s = r && (g.boxSizingReliable() || n === t.style[e]), n = parseFloat(n) || 0
        }
        return n + Ut(t, e, i || (r ? "border" : "content"), s, o) + "px"
    }

    function Gt(t, e, i, n, s) {
        return new Gt.prototype.init(t, e, i, n, s)
    }
    k.extend({
        cssHooks: {
            opacity: {
                get: function(t, e) {
                    if (e) {
                        var i = zt(t, "opacity");
                        return "" === i ? "1" : i
                    }
                }
            }
        },
        cssNumber: {
            animationIterationCount: !0,
            columnCount: !0,
            fillOpacity: !0,
            flexGrow: !0,
            flexShrink: !0,
            fontWeight: !0,
            lineHeight: !0,
            opacity: !0,
            order: !0,
            orphans: !0,
            widows: !0,
            zIndex: !0,
            zoom: !0
        },
        cssProps: {
            float: "cssFloat"
        },
        style: function(t, e, i, n) {
            if (t && 3 !== t.nodeType && 8 !== t.nodeType && t.style) {
                var s, o, r, a = k.camelCase(e),
                    l = t.style;
                return e = k.cssProps[a] || (k.cssProps[a] = Wt(a) || a), r = k.cssHooks[e] || k.cssHooks[a], void 0 === i ? r && "get" in r && void 0 !== (s = r.get(t, !1, n)) ? s : l[e] : ("string" === (o = typeof i) && (s = Z.exec(i)) && s[1] && (i = et(t, e, s), o = "number"), void(null != i && i == i && ("number" === o && (i += s && s[3] || (k.cssNumber[a] ? "" : "px")), g.clearCloneStyle || "" !== i || 0 !== e.indexOf("background") || (l[e] = "inherit"), r && "set" in r && void 0 === (i = r.set(t, i, n)) || (l[e] = i))))
            }
        },
        css: function(t, e, i, n) {
            var s, o, r, a = k.camelCase(e);
            return e = k.cssProps[a] || (k.cssProps[a] = Wt(a) || a), (r = k.cssHooks[e] || k.cssHooks[a]) && "get" in r && (s = r.get(t, !0, i)), void 0 === s && (s = zt(t, e, n)), "normal" === s && e in Ht && (s = Ht[e]), "" === i || i ? (o = parseFloat(s), !0 === i || isFinite(o) ? o || 0 : s) : s
        }
    }), k.each(["height", "width"], function(t, r) {
        k.cssHooks[r] = {
            get: function(t, e, i) {
                if (e) return !Lt.test(k.css(t, "display")) || t.getClientRects().length && t.getBoundingClientRect().width ? Xt(t, r, i) : tt(t, Ot, function() {
                    return Xt(t, r, i)
                })
            },
            set: function(t, e, i) {
                var n, s = i && At(t),
                    o = i && Ut(t, r, i, "border-box" === k.css(t, "boxSizing", !1, s), s);
                return o && (n = Z.exec(e)) && "px" !== (n[3] || "px") && (t.style[r] = e, e = k.css(t, r)), Bt(0, e, o)
            }
        }
    }), k.cssHooks.marginLeft = Mt(g.reliableMarginLeft, function(t, e) {
        if (e) return (parseFloat(zt(t, "marginLeft")) || t.getBoundingClientRect().left - tt(t, {
            marginLeft: 0
        }, function() {
            return t.getBoundingClientRect().left
        })) + "px"
    }), k.each({
        margin: "",
        padding: "",
        border: "Width"
    }, function(s, o) {
        k.cssHooks[s + o] = {
            expand: function(t) {
                for (var e = 0, i = {}, n = "string" == typeof t ? t.split(" ") : [t]; e < 4; e++) i[s + K[e] + o] = n[e] || n[e - 2] || n[0];
                return i
            }
        }, It.test(s) || (k.cssHooks[s + o].set = Bt)
    }), k.fn.extend({
        css: function(t, e) {
            return R(this, function(t, e, i) {
                var n, s, o = {},
                    r = 0;
                if (k.isArray(e)) {
                    for (n = At(t), s = e.length; r < s; r++) o[e[r]] = k.css(t, e[r], !1, n);
                    return o
                }
                return void 0 !== i ? k.style(t, e, i) : k.css(t, e)
            }, t, e, 1 < arguments.length)
        }
    }), ((k.Tween = Gt).prototype = {
        constructor: Gt,
        init: function(t, e, i, n, s, o) {
            this.elem = t, this.prop = i, this.easing = s || k.easing._default, this.options = e, this.start = this.now = this.cur(), this.end = n, this.unit = o || (k.cssNumber[i] ? "" : "px")
        },
        cur: function() {
            var t = Gt.propHooks[this.prop];
            return t && t.get ? t.get(this) : Gt.propHooks._default.get(this)
        },
        run: function(t) {
            var e, i = Gt.propHooks[this.prop];
            return this.options.duration ? this.pos = e = k.easing[this.easing](t, this.options.duration * t, 0, 1, this.options.duration) : this.pos = e = t, this.now = (this.end - this.start) * e + this.start, this.options.step && this.options.step.call(this.elem, this.now, this), i && i.set ? i.set(this) : Gt.propHooks._default.set(this), this
        }
    }).init.prototype = Gt.prototype, (Gt.propHooks = {
        _default: {
            get: function(t) {
                var e;
                return 1 !== t.elem.nodeType || null != t.elem[t.prop] && null == t.elem.style[t.prop] ? t.elem[t.prop] : (e = k.css(t.elem, t.prop, "")) && "auto" !== e ? e : 0
            },
            set: function(t) {
                k.fx.step[t.prop] ? k.fx.step[t.prop](t) : 1 !== t.elem.nodeType || null == t.elem.style[k.cssProps[t.prop]] && !k.cssHooks[t.prop] ? t.elem[t.prop] = t.now : k.style(t.elem, t.prop, t.now + t.unit)
            }
        }
    }).scrollTop = Gt.propHooks.scrollLeft = {
        set: function(t) {
            t.elem.nodeType && t.elem.parentNode && (t.elem[t.prop] = t.now)
        }
    }, k.easing = {
        linear: function(t) {
            return t
        },
        swing: function(t) {
            return .5 - Math.cos(t * Math.PI) / 2
        },
        _default: "swing"
    }, k.fx = Gt.prototype.init, k.fx.step = {};
    var Vt, Qt, Yt, Zt, Kt = /^(?:toggle|show|hide)$/,
        Jt = /queueHooks$/;

    function te() {
        Qt && (C.requestAnimationFrame(te), k.fx.tick())
    }

    function ee() {
        return C.setTimeout(function() {
            Vt = void 0
        }), Vt = k.now()
    }

    function ie(t, e) {
        var i, n = 0,
            s = {
                height: t
            };
        for (e = e ? 1 : 0; n < 4; n += 2 - e) s["margin" + (i = K[n])] = s["padding" + i] = t;
        return e && (s.opacity = s.width = t), s
    }

    function ne(t, e, i) {
        for (var n, s = (se.tweeners[e] || []).concat(se.tweeners["*"]), o = 0, r = s.length; o < r; o++)
            if (n = s[o].call(i, e, t)) return n
    }

    function se(o, t, e) {
        var i, r, n = 0,
            s = se.prefilters.length,
            a = k.Deferred().always(function() {
                delete l.elem
            }),
            l = function() {
                if (r) return !1;
                for (var t = Vt || ee(), e = Math.max(0, c.startTime + c.duration - t), i = 1 - (e / c.duration || 0), n = 0, s = c.tweens.length; n < s; n++) c.tweens[n].run(i);
                return a.notifyWith(o, [c, i, e]), i < 1 && s ? e : (a.resolveWith(o, [c]), !1)
            },
            c = a.promise({
                elem: o,
                props: k.extend({}, t),
                opts: k.extend(!0, {
                    specialEasing: {},
                    easing: k.easing._default
                }, e),
                originalProperties: t,
                originalOptions: e,
                startTime: Vt || ee(),
                duration: e.duration,
                tweens: [],
                createTween: function(t, e) {
                    var i = k.Tween(o, c.opts, t, e, c.opts.specialEasing[t] || c.opts.easing);
                    return c.tweens.push(i), i
                },
                stop: function(t) {
                    var e = 0,
                        i = t ? c.tweens.length : 0;
                    if (r) return this;
                    for (r = !0; e < i; e++) c.tweens[e].run(1);
                    return t ? (a.notifyWith(o, [c, 1, 0]), a.resolveWith(o, [c, t])) : a.rejectWith(o, [c, t]), this
                }
            }),
            h = c.props;
        for (function(t, e) {
                var i, n, s, o, r;
                for (i in t)
                    if (s = e[n = k.camelCase(i)], o = t[i], k.isArray(o) && (s = o[1], o = t[i] = o[0]), i !== n && (t[n] = o, delete t[i]), (r = k.cssHooks[n]) && "expand" in r)
                        for (i in o = r.expand(o), delete t[n], o) i in t || (t[i] = o[i], e[i] = s);
                    else e[n] = s
            }(h, c.opts.specialEasing); n < s; n++)
            if (i = se.prefilters[n].call(c, o, h, c.opts)) return k.isFunction(i.stop) && (k._queueHooks(c.elem, c.opts.queue).stop = k.proxy(i.stop, i)), i;
        return k.map(h, ne, c), k.isFunction(c.opts.start) && c.opts.start.call(o, c), k.fx.timer(k.extend(l, {
            elem: o,
            anim: c,
            queue: c.opts.queue
        })), c.progress(c.opts.progress).done(c.opts.done, c.opts.complete).fail(c.opts.fail).always(c.opts.always)
    }
    k.Animation = k.extend(se, {
        tweeners: {
            "*": [function(t, e) {
                var i = this.createTween(t, e);
                return et(i.elem, t, Z.exec(e), i), i
            }]
        },
        tweener: function(t, e) {
            k.isFunction(t) ? (e = t, t = ["*"]) : t = t.match(A);
            for (var i, n = 0, s = t.length; n < s; n++) i = t[n], se.tweeners[i] = se.tweeners[i] || [], se.tweeners[i].unshift(e)
        },
        prefilters: [function(t, e, i) {
            var n, s, o, r, a, l, c, h, u = "width" in e || "height" in e,
                d = this,
                p = {},
                f = t.style,
                m = t.nodeType && J(t),
                g = U.get(t, "fxshow");
            for (n in i.queue || (null == (r = k._queueHooks(t, "fx")).unqueued && (r.unqueued = 0, a = r.empty.fire, r.empty.fire = function() {
                    r.unqueued || a()
                }), r.unqueued++, d.always(function() {
                    d.always(function() {
                        r.unqueued--, k.queue(t, "fx").length || r.empty.fire()
                    })
                })), e)
                if (s = e[n], Kt.test(s)) {
                    if (delete e[n], o = o || "toggle" === s, s === (m ? "hide" : "show")) {
                        if ("show" !== s || !g || void 0 === g[n]) continue;
                        m = !0
                    }
                    p[n] = g && g[n] || k.style(t, n)
                } if ((l = !k.isEmptyObject(e)) || !k.isEmptyObject(p))
                for (n in u && 1 === t.nodeType && (i.overflow = [f.overflow, f.overflowX, f.overflowY], null == (c = g && g.display) && (c = U.get(t, "display")), "none" === (h = k.css(t, "display")) && (c ? h = c : (nt([t], !0), c = t.style.display || c, h = k.css(t, "display"), nt([t]))), ("inline" === h || "inline-block" === h && null != c) && "none" === k.css(t, "float") && (l || (d.done(function() {
                        f.display = c
                    }), null == c && (h = f.display, c = "none" === h ? "" : h)), f.display = "inline-block")), i.overflow && (f.overflow = "hidden", d.always(function() {
                        f.overflow = i.overflow[0], f.overflowX = i.overflow[1], f.overflowY = i.overflow[2]
                    })), l = !1, p) l || (g ? "hidden" in g && (m = g.hidden) : g = U.access(t, "fxshow", {
                    display: c
                }), o && (g.hidden = !m), m && nt([t], !0), d.done(function() {
                    for (n in m || nt([t]), U.remove(t, "fxshow"), p) k.style(t, n, p[n])
                })), l = ne(m ? g[n] : 0, n, d), n in g || (g[n] = l.start, m && (l.end = l.start, l.start = 0))
        }],
        prefilter: function(t, e) {
            e ? se.prefilters.unshift(t) : se.prefilters.push(t)
        }
    }), k.speed = function(t, e, i) {
        var n = t && "object" == typeof t ? k.extend({}, t) : {
            complete: i || !i && e || k.isFunction(t) && t,
            duration: t,
            easing: i && e || e && !k.isFunction(e) && e
        };
        return k.fx.off || $.hidden ? n.duration = 0 : "number" != typeof n.duration && (n.duration in k.fx.speeds ? n.duration = k.fx.speeds[n.duration] : n.duration = k.fx.speeds._default), null != n.queue && !0 !== n.queue || (n.queue = "fx"), n.old = n.complete, n.complete = function() {
            k.isFunction(n.old) && n.old.call(this), n.queue && k.dequeue(this, n.queue)
        }, n
    }, k.fn.extend({
        fadeTo: function(t, e, i, n) {
            return this.filter(J).css("opacity", 0).show().end().animate({
                opacity: e
            }, t, i, n)
        },
        animate: function(e, t, i, n) {
            var s = k.isEmptyObject(e),
                o = k.speed(t, i, n),
                r = function() {
                    var t = se(this, k.extend({}, e), o);
                    (s || U.get(this, "finish")) && t.stop(!0)
                };
            return r.finish = r, s || !1 === o.queue ? this.each(r) : this.queue(o.queue, r)
        },
        stop: function(s, t, o) {
            var r = function(t) {
                var e = t.stop;
                delete t.stop, e(o)
            };
            return "string" != typeof s && (o = t, t = s, s = void 0), t && !1 !== s && this.queue(s || "fx", []), this.each(function() {
                var t = !0,
                    e = null != s && s + "queueHooks",
                    i = k.timers,
                    n = U.get(this);
                if (e) n[e] && n[e].stop && r(n[e]);
                else
                    for (e in n) n[e] && n[e].stop && Jt.test(e) && r(n[e]);
                for (e = i.length; e--;) i[e].elem !== this || null != s && i[e].queue !== s || (i[e].anim.stop(o), t = !1, i.splice(e, 1));
                !t && o || k.dequeue(this, s)
            })
        },
        finish: function(r) {
            return !1 !== r && (r = r || "fx"), this.each(function() {
                var t, e = U.get(this),
                    i = e[r + "queue"],
                    n = e[r + "queueHooks"],
                    s = k.timers,
                    o = i ? i.length : 0;
                for (e.finish = !0, k.queue(this, r, []), n && n.stop && n.stop.call(this, !0), t = s.length; t--;) s[t].elem === this && s[t].queue === r && (s[t].anim.stop(!0), s.splice(t, 1));
                for (t = 0; t < o; t++) i[t] && i[t].finish && i[t].finish.call(this);
                delete e.finish
            })
        }
    }), k.each(["toggle", "show", "hide"], function(t, n) {
        var s = k.fn[n];
        k.fn[n] = function(t, e, i) {
            return null == t || "boolean" == typeof t ? s.apply(this, arguments) : this.animate(ie(n, !0), t, e, i)
        }
    }), k.each({
        slideDown: ie("show"),
        slideUp: ie("hide"),
        slideToggle: ie("toggle"),
        fadeIn: {
            opacity: "show"
        },
        fadeOut: {
            opacity: "hide"
        },
        fadeToggle: {
            opacity: "toggle"
        }
    }, function(t, n) {
        k.fn[t] = function(t, e, i) {
            return this.animate(n, t, e, i)
        }
    }), k.timers = [], k.fx.tick = function() {
        var t, e = 0,
            i = k.timers;
        for (Vt = k.now(); e < i.length; e++)(t = i[e])() || i[e] !== t || i.splice(e--, 1);
        i.length || k.fx.stop(), Vt = void 0
    }, k.fx.timer = function(t) {
        k.timers.push(t), t() ? k.fx.start() : k.timers.pop()
    }, k.fx.interval = 13, k.fx.start = function() {
        Qt || (Qt = C.requestAnimationFrame ? C.requestAnimationFrame(te) : C.setInterval(k.fx.tick, k.fx.interval))
    }, k.fx.stop = function() {
        C.cancelAnimationFrame ? C.cancelAnimationFrame(Qt) : C.clearInterval(Qt), Qt = null
    }, k.fx.speeds = {
        slow: 600,
        fast: 200,
        _default: 400
    }, k.fn.delay = function(n, t) {
        return n = k.fx && k.fx.speeds[n] || n, t = t || "fx", this.queue(t, function(t, e) {
            var i = C.setTimeout(t, n);
            e.stop = function() {
                C.clearTimeout(i)
            }
        })
    }, Yt = $.createElement("input"), Zt = $.createElement("select").appendChild($.createElement("option")), Yt.type = "checkbox", g.checkOn = "" !== Yt.value, g.optSelected = Zt.selected, (Yt = $.createElement("input")).value = "t", Yt.type = "radio", g.radioValue = "t" === Yt.value;
    var oe, re = k.expr.attrHandle;
    k.fn.extend({
        attr: function(t, e) {
            return R(this, k.attr, t, e, 1 < arguments.length)
        },
        removeAttr: function(t) {
            return this.each(function() {
                k.removeAttr(this, t)
            })
        }
    }), k.extend({
        attr: function(t, e, i) {
            var n, s, o = t.nodeType;
            if (3 !== o && 8 !== o && 2 !== o) return void 0 === t.getAttribute ? k.prop(t, e, i) : (1 === o && k.isXMLDoc(t) || (s = k.attrHooks[e.toLowerCase()] || (k.expr.match.bool.test(e) ? oe : void 0)), void 0 !== i ? null === i ? void k.removeAttr(t, e) : s && "set" in s && void 0 !== (n = s.set(t, i, e)) ? n : (t.setAttribute(e, i + ""), i) : s && "get" in s && null !== (n = s.get(t, e)) ? n : null == (n = k.find.attr(t, e)) ? void 0 : n)
        },
        attrHooks: {
            type: {
                set: function(t, e) {
                    if (!g.radioValue && "radio" === e && k.nodeName(t, "input")) {
                        var i = t.value;
                        return t.setAttribute("type", e), i && (t.value = i), e
                    }
                }
            }
        },
        removeAttr: function(t, e) {
            var i, n = 0,
                s = e && e.match(A);
            if (s && 1 === t.nodeType)
                for (; i = s[n++];) t.removeAttribute(i)
        }
    }), oe = {
        set: function(t, e, i) {
            return !1 === e ? k.removeAttr(t, i) : t.setAttribute(i, i), i
        }
    }, k.each(k.expr.match.bool.source.match(/\w+/g), function(t, e) {
        var r = re[e] || k.find.attr;
        re[e] = function(t, e, i) {
            var n, s, o = e.toLowerCase();
            return i || (s = re[o], re[o] = n, n = null != r(t, e, i) ? o : null, re[o] = s), n
        }
    });
    var ae = /^(?:input|select|textarea|button)$/i,
        le = /^(?:a|area)$/i;

    function ce(t) {
        return (t.match(A) || []).join(" ")
    }

    function he(t) {
        return t.getAttribute && t.getAttribute("class") || ""
    }
    k.fn.extend({
        prop: function(t, e) {
            return R(this, k.prop, t, e, 1 < arguments.length)
        },
        removeProp: function(t) {
            return this.each(function() {
                delete this[k.propFix[t] || t]
            })
        }
    }), k.extend({
        prop: function(t, e, i) {
            var n, s, o = t.nodeType;
            if (3 !== o && 8 !== o && 2 !== o) return 1 === o && k.isXMLDoc(t) || (e = k.propFix[e] || e, s = k.propHooks[e]), void 0 !== i ? s && "set" in s && void 0 !== (n = s.set(t, i, e)) ? n : t[e] = i : s && "get" in s && null !== (n = s.get(t, e)) ? n : t[e]
        },
        propHooks: {
            tabIndex: {
                get: function(t) {
                    var e = k.find.attr(t, "tabindex");
                    return e ? parseInt(e, 10) : ae.test(t.nodeName) || le.test(t.nodeName) && t.href ? 0 : -1
                }
            }
        },
        propFix: {
            for: "htmlFor",
            class: "className"
        }
    }), g.optSelected || (k.propHooks.selected = {
        get: function(t) {
            var e = t.parentNode;
            return e && e.parentNode && e.parentNode.selectedIndex, null
        },
        set: function(t) {
            var e = t.parentNode;
            e && (e.selectedIndex, e.parentNode && e.parentNode.selectedIndex)
        }
    }), k.each(["tabIndex", "readOnly", "maxLength", "cellSpacing", "cellPadding", "rowSpan", "colSpan", "useMap", "frameBorder", "contentEditable"], function() {
        k.propFix[this.toLowerCase()] = this
    }), k.fn.extend({
        addClass: function(e) {
            var t, i, n, s, o, r, a, l = 0;
            if (k.isFunction(e)) return this.each(function(t) {
                k(this).addClass(e.call(this, t, he(this)))
            });
            if ("string" == typeof e && e)
                for (t = e.match(A) || []; i = this[l++];)
                    if (s = he(i), n = 1 === i.nodeType && " " + ce(s) + " ") {
                        for (r = 0; o = t[r++];) n.indexOf(" " + o + " ") < 0 && (n += o + " ");
                        s !== (a = ce(n)) && i.setAttribute("class", a)
                    } return this
        },
        removeClass: function(e) {
            var t, i, n, s, o, r, a, l = 0;
            if (k.isFunction(e)) return this.each(function(t) {
                k(this).removeClass(e.call(this, t, he(this)))
            });
            if (!arguments.length) return this.attr("class", "");
            if ("string" == typeof e && e)
                for (t = e.match(A) || []; i = this[l++];)
                    if (s = he(i), n = 1 === i.nodeType && " " + ce(s) + " ") {
                        for (r = 0; o = t[r++];)
                            for (; - 1 < n.indexOf(" " + o + " ");) n = n.replace(" " + o + " ", " ");
                        s !== (a = ce(n)) && i.setAttribute("class", a)
                    } return this
        },
        toggleClass: function(s, e) {
            var o = typeof s;
            return "boolean" == typeof e && "string" === o ? e ? this.addClass(s) : this.removeClass(s) : k.isFunction(s) ? this.each(function(t) {
                k(this).toggleClass(s.call(this, t, he(this), e), e)
            }) : this.each(function() {
                var t, e, i, n;
                if ("string" === o)
                    for (e = 0, i = k(this), n = s.match(A) || []; t = n[e++];) i.hasClass(t) ? i.removeClass(t) : i.addClass(t);
                else void 0 !== s && "boolean" !== o || ((t = he(this)) && U.set(this, "__className__", t), this.setAttribute && this.setAttribute("class", t || !1 === s ? "" : U.get(this, "__className__") || ""))
            })
        },
        hasClass: function(t) {
            var e, i, n = 0;
            for (e = " " + t + " "; i = this[n++];)
                if (1 === i.nodeType && -1 < (" " + ce(he(i)) + " ").indexOf(e)) return !0;
            return !1
        }
    });
    var ue = /\r/g;
    k.fn.extend({
        val: function(i) {
            var n, t, s, e = this[0];
            return arguments.length ? (s = k.isFunction(i), this.each(function(t) {
                var e;
                1 === this.nodeType && (null == (e = s ? i.call(this, t, k(this).val()) : i) ? e = "" : "number" == typeof e ? e += "" : k.isArray(e) && (e = k.map(e, function(t) {
                    return null == t ? "" : t + ""
                })), (n = k.valHooks[this.type] || k.valHooks[this.nodeName.toLowerCase()]) && "set" in n && void 0 !== n.set(this, e, "value") || (this.value = e))
            })) : e ? (n = k.valHooks[e.type] || k.valHooks[e.nodeName.toLowerCase()]) && "get" in n && void 0 !== (t = n.get(e, "value")) ? t : "string" == typeof(t = e.value) ? t.replace(ue, "") : null == t ? "" : t : void 0
        }
    }), k.extend({
        valHooks: {
            option: {
                get: function(t) {
                    var e = k.find.attr(t, "value");
                    return null != e ? e : ce(k.text(t))
                }
            },
            select: {
                get: function(t) {
                    var e, i, n, s = t.options,
                        o = t.selectedIndex,
                        r = "select-one" === t.type,
                        a = r ? null : [],
                        l = r ? o + 1 : s.length;
                    for (n = o < 0 ? l : r ? o : 0; n < l; n++)
                        if (((i = s[n]).selected || n === o) && !i.disabled && (!i.parentNode.disabled || !k.nodeName(i.parentNode, "optgroup"))) {
                            if (e = k(i).val(), r) return e;
                            a.push(e)
                        } return a
                },
                set: function(t, e) {
                    for (var i, n, s = t.options, o = k.makeArray(e), r = s.length; r--;)((n = s[r]).selected = -1 < k.inArray(k.valHooks.option.get(n), o)) && (i = !0);
                    return i || (t.selectedIndex = -1), o
                }
            }
        }
    }), k.each(["radio", "checkbox"], function() {
        k.valHooks[this] = {
            set: function(t, e) {
                if (k.isArray(e)) return t.checked = -1 < k.inArray(k(t).val(), e)
            }
        }, g.checkOn || (k.valHooks[this].get = function(t) {
            return null === t.getAttribute("value") ? "on" : t.value
        })
    });
    var de = /^(?:focusinfocus|focusoutblur)$/;
    k.extend(k.event, {
        trigger: function(t, e, i, n) {
            var s, o, r, a, l, c, h, u = [i || $],
                d = f.call(t, "type") ? t.type : t,
                p = f.call(t, "namespace") ? t.namespace.split(".") : [];
            if (o = r = i = i || $, 3 !== i.nodeType && 8 !== i.nodeType && !de.test(d + k.event.triggered) && (-1 < d.indexOf(".") && (d = (p = d.split(".")).shift(), p.sort()), l = d.indexOf(":") < 0 && "on" + d, (t = t[k.expando] ? t : new k.Event(d, "object" == typeof t && t)).isTrigger = n ? 2 : 3, t.namespace = p.join("."), t.rnamespace = t.namespace ? new RegExp("(^|\\.)" + p.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, t.result = void 0, t.target || (t.target = i), e = null == e ? [t] : k.makeArray(e, [t]), h = k.event.special[d] || {}, n || !h.trigger || !1 !== h.trigger.apply(i, e))) {
                if (!n && !h.noBubble && !k.isWindow(i)) {
                    for (a = h.delegateType || d, de.test(a + d) || (o = o.parentNode); o; o = o.parentNode) u.push(o), r = o;
                    r === (i.ownerDocument || $) && u.push(r.defaultView || r.parentWindow || C)
                }
                for (s = 0;
                    (o = u[s++]) && !t.isPropagationStopped();) t.type = 1 < s ? a : h.bindType || d, (c = (U.get(o, "events") || {})[t.type] && U.get(o, "handle")) && c.apply(o, e), (c = l && o[l]) && c.apply && W(o) && (t.result = c.apply(o, e), !1 === t.result && t.preventDefault());
                return t.type = d, n || t.isDefaultPrevented() || h._default && !1 !== h._default.apply(u.pop(), e) || !W(i) || l && k.isFunction(i[d]) && !k.isWindow(i) && ((r = i[l]) && (i[l] = null), i[k.event.triggered = d](), k.event.triggered = void 0, r && (i[l] = r)), t.result
            }
        },
        simulate: function(t, e, i) {
            var n = k.extend(new k.Event, i, {
                type: t,
                isSimulated: !0
            });
            k.event.trigger(n, null, e)
        }
    }), k.fn.extend({
        trigger: function(t, e) {
            return this.each(function() {
                k.event.trigger(t, e, this)
            })
        },
        triggerHandler: function(t, e) {
            var i = this[0];
            if (i) return k.event.trigger(t, e, i, !0)
        }
    }), k.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "), function(t, i) {
        k.fn[i] = function(t, e) {
            return 0 < arguments.length ? this.on(i, null, t, e) : this.trigger(i)
        }
    }), k.fn.extend({
        hover: function(t, e) {
            return this.mouseenter(t).mouseleave(e || t)
        }
    }), g.focusin = "onfocusin" in C, g.focusin || k.each({
        focus: "focusin",
        blur: "focusout"
    }, function(i, n) {
        var s = function(t) {
            k.event.simulate(n, t.target, k.event.fix(t))
        };
        k.event.special[n] = {
            setup: function() {
                var t = this.ownerDocument || this,
                    e = U.access(t, n);
                e || t.addEventListener(i, s, !0), U.access(t, n, (e || 0) + 1)
            },
            teardown: function() {
                var t = this.ownerDocument || this,
                    e = U.access(t, n) - 1;
                e ? U.access(t, n, e) : (t.removeEventListener(i, s, !0), U.remove(t, n))
            }
        }
    });
    var pe = C.location,
        fe = k.now(),
        me = /\?/;
    k.parseXML = function(t) {
        var e;
        if (!t || "string" != typeof t) return null;
        try {
            e = (new C.DOMParser).parseFromString(t, "text/xml")
        } catch (t) {
            e = void 0
        }
        return e && !e.getElementsByTagName("parsererror").length || k.error("Invalid XML: " + t), e
    };
    var ge = /\[\]$/,
        ve = /\r?\n/g,
        _e = /^(?:submit|button|image|reset|file)$/i,
        ye = /^(?:input|select|textarea|keygen)/i;

    function be(i, t, n, s) {
        var e;
        if (k.isArray(t)) k.each(t, function(t, e) {
            n || ge.test(i) ? s(i, e) : be(i + "[" + ("object" == typeof e && null != e ? t : "") + "]", e, n, s)
        });
        else if (n || "object" !== k.type(t)) s(i, t);
        else
            for (e in t) be(i + "[" + e + "]", t[e], n, s)
    }
    k.param = function(t, e) {
        var i, n = [],
            s = function(t, e) {
                var i = k.isFunction(e) ? e() : e;
                n[n.length] = encodeURIComponent(t) + "=" + encodeURIComponent(null == i ? "" : i)
            };
        if (k.isArray(t) || t.jquery && !k.isPlainObject(t)) k.each(t, function() {
            s(this.name, this.value)
        });
        else
            for (i in t) be(i, t[i], e, s);
        return n.join("&")
    }, k.fn.extend({
        serialize: function() {
            return k.param(this.serializeArray())
        },
        serializeArray: function() {
            return this.map(function() {
                var t = k.prop(this, "elements");
                return t ? k.makeArray(t) : this
            }).filter(function() {
                var t = this.type;
                return this.name && !k(this).is(":disabled") && ye.test(this.nodeName) && !_e.test(t) && (this.checked || !st.test(t))
            }).map(function(t, e) {
                var i = k(this).val();
                return null == i ? null : k.isArray(i) ? k.map(i, function(t) {
                    return {
                        name: e.name,
                        value: t.replace(ve, "\r\n")
                    }
                }) : {
                    name: e.name,
                    value: i.replace(ve, "\r\n")
                }
            }).get()
        }
    });
    var xe = /%20/g,
        we = /#.*$/,
        Ce = /([?&])_=[^&]*/,
        $e = /^(.*?):[ \t]*([^\r\n]*)$/gm,
        ke = /^(?:GET|HEAD)$/,
        Te = /^\/\//,
        Ee = {},
        Se = {},
        je = "*/".concat("*"),
        Fe = $.createElement("a");

    function De(o) {
        return function(t, e) {
            "string" != typeof t && (e = t, t = "*");
            var i, n = 0,
                s = t.toLowerCase().match(A) || [];
            if (k.isFunction(e))
                for (; i = s[n++];) "+" === i[0] ? (i = i.slice(1) || "*", (o[i] = o[i] || []).unshift(e)) : (o[i] = o[i] || []).push(e)
        }
    }

    function Ne(e, s, o, r) {
        var a = {},
            l = e === Se;

        function c(t) {
            var n;
            return a[t] = !0, k.each(e[t] || [], function(t, e) {
                var i = e(s, o, r);
                return "string" != typeof i || l || a[i] ? l ? !(n = i) : void 0 : (s.dataTypes.unshift(i), c(i), !1)
            }), n
        }
        return c(s.dataTypes[0]) || !a["*"] && c("*")
    }

    function Ie(t, e) {
        var i, n, s = k.ajaxSettings.flatOptions || {};
        for (i in e) void 0 !== e[i] && ((s[i] ? t : n || (n = {}))[i] = e[i]);
        return n && k.extend(!0, t, n), t
    }
    Fe.href = pe.href, k.extend({
        active: 0,
        lastModified: {},
        etag: {},
        ajaxSettings: {
            url: pe.href,
            type: "GET",
            isLocal: /^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(pe.protocol),
            global: !0,
            processData: !0,
            async: !0,
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            accepts: {
                "*": je,
                text: "text/plain",
                html: "text/html",
                xml: "application/xml, text/xml",
                json: "application/json, text/javascript"
            },
            contents: {
                xml: /\bxml\b/,
                html: /\bhtml/,
                json: /\bjson\b/
            },
            responseFields: {
                xml: "responseXML",
                text: "responseText",
                json: "responseJSON"
            },
            converters: {
                "* text": String,
                "text html": !0,
                "text json": JSON.parse,
                "text xml": k.parseXML
            },
            flatOptions: {
                url: !0,
                context: !0
            }
        },
        ajaxSetup: function(t, e) {
            return e ? Ie(Ie(t, k.ajaxSettings), e) : Ie(k.ajaxSettings, t)
        },
        ajaxPrefilter: De(Ee),
        ajaxTransport: De(Se),
        ajax: function(t, e) {
            "object" == typeof t && (e = t, t = void 0), e = e || {};
            var h, u, d, i, p, n, f, m, s, o, g = k.ajaxSetup({}, e),
                v = g.context || g,
                _ = g.context && (v.nodeType || v.jquery) ? k(v) : k.event,
                y = k.Deferred(),
                b = k.Callbacks("once memory"),
                x = g.statusCode || {},
                r = {},
                a = {},
                l = "canceled",
                w = {
                    readyState: 0,
                    getResponseHeader: function(t) {
                        var e;
                        if (f) {
                            if (!i)
                                for (i = {}; e = $e.exec(d);) i[e[1].toLowerCase()] = e[2];
                            e = i[t.toLowerCase()]
                        }
                        return null == e ? null : e
                    },
                    getAllResponseHeaders: function() {
                        return f ? d : null
                    },
                    setRequestHeader: function(t, e) {
                        return null == f && (t = a[t.toLowerCase()] = a[t.toLowerCase()] || t, r[t] = e), this
                    },
                    overrideMimeType: function(t) {
                        return null == f && (g.mimeType = t), this
                    },
                    statusCode: function(t) {
                        var e;
                        if (t)
                            if (f) w.always(t[w.status]);
                            else
                                for (e in t) x[e] = [x[e], t[e]];
                        return this
                    },
                    abort: function(t) {
                        var e = t || l;
                        return h && h.abort(e), c(0, e), this
                    }
                };
            if (y.promise(w), g.url = ((t || g.url || pe.href) + "").replace(Te, pe.protocol + "//"), g.type = e.method || e.type || g.method || g.type, g.dataTypes = (g.dataType || "*").toLowerCase().match(A) || [""], null == g.crossDomain) {
                n = $.createElement("a");
                try {
                    n.href = g.url, n.href = n.href, g.crossDomain = Fe.protocol + "//" + Fe.host != n.protocol + "//" + n.host
                } catch (t) {
                    g.crossDomain = !0
                }
            }
            if (g.data && g.processData && "string" != typeof g.data && (g.data = k.param(g.data, g.traditional)), Ne(Ee, g, e, w), f) return w;
            for (s in (m = k.event && g.global) && 0 == k.active++ && k.event.trigger("ajaxStart"), g.type = g.type.toUpperCase(), g.hasContent = !ke.test(g.type), u = g.url.replace(we, ""), g.hasContent ? g.data && g.processData && 0 === (g.contentType || "").indexOf("application/x-www-form-urlencoded") && (g.data = g.data.replace(xe, "+")) : (o = g.url.slice(u.length), g.data && (u += (me.test(u) ? "&" : "?") + g.data, delete g.data), !1 === g.cache && (u = u.replace(Ce, "$1"), o = (me.test(u) ? "&" : "?") + "_=" + fe++ + o), g.url = u + o), g.ifModified && (k.lastModified[u] && w.setRequestHeader("If-Modified-Since", k.lastModified[u]), k.etag[u] && w.setRequestHeader("If-None-Match", k.etag[u])), (g.data && g.hasContent && !1 !== g.contentType || e.contentType) && w.setRequestHeader("Content-Type", g.contentType), w.setRequestHeader("Accept", g.dataTypes[0] && g.accepts[g.dataTypes[0]] ? g.accepts[g.dataTypes[0]] + ("*" !== g.dataTypes[0] ? ", " + je + "; q=0.01" : "") : g.accepts["*"]), g.headers) w.setRequestHeader(s, g.headers[s]);
            if (g.beforeSend && (!1 === g.beforeSend.call(v, w, g) || f)) return w.abort();
            if (l = "abort", b.add(g.complete), w.done(g.success), w.fail(g.error), h = Ne(Se, g, e, w)) {
                if (w.readyState = 1, m && _.trigger("ajaxSend", [w, g]), f) return w;
                g.async && 0 < g.timeout && (p = C.setTimeout(function() {
                    w.abort("timeout")
                }, g.timeout));
                try {
                    f = !1, h.send(r, c)
                } catch (t) {
                    if (f) throw t;
                    c(-1, t)
                }
            } else c(-1, "No Transport");

            function c(t, e, i, n) {
                var s, o, r, a, l, c = e;
                f || (f = !0, p && C.clearTimeout(p), h = void 0, d = n || "", w.readyState = 0 < t ? 4 : 0, s = 200 <= t && t < 300 || 304 === t, i && (a = function(t, e, i) {
                    for (var n, s, o, r, a = t.contents, l = t.dataTypes;
                        "*" === l[0];) l.shift(), void 0 === n && (n = t.mimeType || e.getResponseHeader("Content-Type"));
                    if (n)
                        for (s in a)
                            if (a[s] && a[s].test(n)) {
                                l.unshift(s);
                                break
                            } if (l[0] in i) o = l[0];
                    else {
                        for (s in i) {
                            if (!l[0] || t.converters[s + " " + l[0]]) {
                                o = s;
                                break
                            }
                            r || (r = s)
                        }
                        o = o || r
                    }
                    if (o) return o !== l[0] && l.unshift(o), i[o]
                }(g, w, i)), a = function(t, e, i, n) {
                    var s, o, r, a, l, c = {},
                        h = t.dataTypes.slice();
                    if (h[1])
                        for (r in t.converters) c[r.toLowerCase()] = t.converters[r];
                    for (o = h.shift(); o;)
                        if (t.responseFields[o] && (i[t.responseFields[o]] = e), !l && n && t.dataFilter && (e = t.dataFilter(e, t.dataType)), l = o, o = h.shift())
                            if ("*" === o) o = l;
                            else if ("*" !== l && l !== o) {
                        if (!(r = c[l + " " + o] || c["* " + o]))
                            for (s in c)
                                if ((a = s.split(" "))[1] === o && (r = c[l + " " + a[0]] || c["* " + a[0]])) {
                                    !0 === r ? r = c[s] : !0 !== c[s] && (o = a[0], h.unshift(a[1]));
                                    break
                                } if (!0 !== r)
                            if (r && t.throws) e = r(e);
                            else try {
                                e = r(e)
                            } catch (t) {
                                return {
                                    state: "parsererror",
                                    error: r ? t : "No conversion from " + l + " to " + o
                                }
                            }
                    }
                    return {
                        state: "success",
                        data: e
                    }
                }(g, a, w, s), s ? (g.ifModified && ((l = w.getResponseHeader("Last-Modified")) && (k.lastModified[u] = l), (l = w.getResponseHeader("etag")) && (k.etag[u] = l)), 204 === t || "HEAD" === g.type ? c = "nocontent" : 304 === t ? c = "notmodified" : (c = a.state, o = a.data, s = !(r = a.error))) : (r = c, !t && c || (c = "error", t < 0 && (t = 0))), w.status = t, w.statusText = (e || c) + "", s ? y.resolveWith(v, [o, c, w]) : y.rejectWith(v, [w, c, r]), w.statusCode(x), x = void 0, m && _.trigger(s ? "ajaxSuccess" : "ajaxError", [w, g, s ? o : r]), b.fireWith(v, [w, c]), m && (_.trigger("ajaxComplete", [w, g]), --k.active || k.event.trigger("ajaxStop")))
            }
            return w
        },
        getJSON: function(t, e, i) {
            return k.get(t, e, i, "json")
        },
        getScript: function(t, e) {
            return k.get(t, void 0, e, "script")
        }
    }), k.each(["get", "post"], function(t, s) {
        k[s] = function(t, e, i, n) {
            return k.isFunction(e) && (n = n || i, i = e, e = void 0), k.ajax(k.extend({
                url: t,
                type: s,
                dataType: n,
                data: e,
                success: i
            }, k.isPlainObject(t) && t))
        }
    }), k._evalUrl = function(t) {
        return k.ajax({
            url: t,
            type: "GET",
            dataType: "script",
            cache: !0,
            async: !1,
            global: !1,
            throws: !0
        })
    }, k.fn.extend({
        wrapAll: function(t) {
            var e;
            return this[0] && (k.isFunction(t) && (t = t.call(this[0])), e = k(t, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && e.insertBefore(this[0]), e.map(function() {
                for (var t = this; t.firstElementChild;) t = t.firstElementChild;
                return t
            }).append(this)), this
        },
        wrapInner: function(i) {
            return k.isFunction(i) ? this.each(function(t) {
                k(this).wrapInner(i.call(this, t))
            }) : this.each(function() {
                var t = k(this),
                    e = t.contents();
                e.length ? e.wrapAll(i) : t.append(i)
            })
        },
        wrap: function(e) {
            var i = k.isFunction(e);
            return this.each(function(t) {
                k(this).wrapAll(i ? e.call(this, t) : e)
            })
        },
        unwrap: function(t) {
            return this.parent(t).not("body").each(function() {
                k(this).replaceWith(this.childNodes)
            }), this
        }
    }), k.expr.pseudos.hidden = function(t) {
        return !k.expr.pseudos.visible(t)
    }, k.expr.pseudos.visible = function(t) {
        return !!(t.offsetWidth || t.offsetHeight || t.getClientRects().length)
    }, k.ajaxSettings.xhr = function() {
        try {
            return new C.XMLHttpRequest
        } catch (t) {}
    };
    var Pe = {
            0: 200,
            1223: 204
        },
        Ae = k.ajaxSettings.xhr();
    g.cors = !!Ae && "withCredentials" in Ae, g.ajax = Ae = !!Ae, k.ajaxTransport(function(s) {
        var o, r;
        if (g.cors || Ae && !s.crossDomain) return {
            send: function(t, e) {
                var i, n = s.xhr();
                if (n.open(s.type, s.url, s.async, s.username, s.password), s.xhrFields)
                    for (i in s.xhrFields) n[i] = s.xhrFields[i];
                for (i in s.mimeType && n.overrideMimeType && n.overrideMimeType(s.mimeType), s.crossDomain || t["X-Requested-With"] || (t["X-Requested-With"] = "XMLHttpRequest"), t) n.setRequestHeader(i, t[i]);
                o = function(t) {
                    return function() {
                        o && (o = r = n.onload = n.onerror = n.onabort = n.onreadystatechange = null, "abort" === t ? n.abort() : "error" === t ? "number" != typeof n.status ? e(0, "error") : e(n.status, n.statusText) : e(Pe[n.status] || n.status, n.statusText, "text" !== (n.responseType || "text") || "string" != typeof n.responseText ? {
                            binary: n.response
                        } : {
                            text: n.responseText
                        }, n.getAllResponseHeaders()))
                    }
                }, n.onload = o(), r = n.onerror = o("error"), void 0 !== n.onabort ? n.onabort = r : n.onreadystatechange = function() {
                    4 === n.readyState && C.setTimeout(function() {
                        o && r()
                    })
                }, o = o("abort");
                try {
                    n.send(s.hasContent && s.data || null)
                } catch (t) {
                    if (o) throw t
                }
            },
            abort: function() {
                o && o()
            }
        }
    }), k.ajaxPrefilter(function(t) {
        t.crossDomain && (t.contents.script = !1)
    }), k.ajaxSetup({
        accepts: {
            script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
        },
        contents: {
            script: /\b(?:java|ecma)script\b/
        },
        converters: {
            "text script": function(t) {
                return k.globalEval(t), t
            }
        }
    }), k.ajaxPrefilter("script", function(t) {
        void 0 === t.cache && (t.cache = !1), t.crossDomain && (t.type = "GET")
    }), k.ajaxTransport("script", function(i) {
        var n, s;
        if (i.crossDomain) return {
            send: function(t, e) {
                n = k("<script>").prop({
                    charset: i.scriptCharset,
                    src: i.url
                }).on("load error", s = function(t) {
                    n.remove(), s = null, t && e("error" === t.type ? 404 : 200, t.type)
                }), $.head.appendChild(n[0])
            },
            abort: function() {
                s && s()
            }
        }
    });
    var ze, Me = [],
        Le = /(=)\?(?=&|$)|\?\?/;

    function Oe(t) {
        return k.isWindow(t) ? t : 9 === t.nodeType && t.defaultView
    }
    k.ajaxSetup({
        jsonp: "callback",
        jsonpCallback: function() {
            var t = Me.pop() || k.expando + "_" + fe++;
            return this[t] = !0, t
        }
    }), k.ajaxPrefilter("json jsonp", function(t, e, i) {
        var n, s, o, r = !1 !== t.jsonp && (Le.test(t.url) ? "url" : "string" == typeof t.data && 0 === (t.contentType || "").indexOf("application/x-www-form-urlencoded") && Le.test(t.data) && "data");
        if (r || "jsonp" === t.dataTypes[0]) return n = t.jsonpCallback = k.isFunction(t.jsonpCallback) ? t.jsonpCallback() : t.jsonpCallback, r ? t[r] = t[r].replace(Le, "$1" + n) : !1 !== t.jsonp && (t.url += (me.test(t.url) ? "&" : "?") + t.jsonp + "=" + n), t.converters["script json"] = function() {
            return o || k.error(n + " was not called"), o[0]
        }, t.dataTypes[0] = "json", s = C[n], C[n] = function() {
            o = arguments
        }, i.always(function() {
            void 0 === s ? k(C).removeProp(n) : C[n] = s, t[n] && (t.jsonpCallback = e.jsonpCallback, Me.push(n)), o && k.isFunction(s) && s(o[0]), o = s = void 0
        }), "script"
    }), g.createHTMLDocument = ((ze = $.implementation.createHTMLDocument("").body).innerHTML = "<form></form><form></form>", 2 === ze.childNodes.length), k.parseHTML = function(t, e, i) {
        return "string" != typeof t ? [] : ("boolean" == typeof e && (i = e, e = !1), e || (g.createHTMLDocument ? ((n = (e = $.implementation.createHTMLDocument("")).createElement("base")).href = $.location.href, e.head.appendChild(n)) : e = $), o = !i && [], (s = E.exec(t)) ? [e.createElement(s[1])] : (s = pt([t], e, o), o && o.length && k(o).remove(), k.merge([], s.childNodes)));
        var n, s, o
    }, k.fn.load = function(t, e, i) {
        var n, s, o, r = this,
            a = t.indexOf(" ");
        return -1 < a && (n = ce(t.slice(a)), t = t.slice(0, a)), k.isFunction(e) ? (i = e, e = void 0) : e && "object" == typeof e && (s = "POST"), 0 < r.length && k.ajax({
            url: t,
            type: s || "GET",
            dataType: "html",
            data: e
        }).done(function(t) {
            o = arguments, r.html(n ? k("<div>").append(k.parseHTML(t)).find(n) : t)
        }).always(i && function(t, e) {
            r.each(function() {
                i.apply(this, o || [t.responseText, e, t])
            })
        }), this
    }, k.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], function(t, e) {
        k.fn[e] = function(t) {
            return this.on(e, t)
        }
    }), k.expr.pseudos.animated = function(e) {
        return k.grep(k.timers, function(t) {
            return e === t.elem
        }).length
    }, k.offset = {
        setOffset: function(t, e, i) {
            var n, s, o, r, a, l, c = k.css(t, "position"),
                h = k(t),
                u = {};
            "static" === c && (t.style.position = "relative"), a = h.offset(), o = k.css(t, "top"), l = k.css(t, "left"), ("absolute" === c || "fixed" === c) && -1 < (o + l).indexOf("auto") ? (r = (n = h.position()).top, s = n.left) : (r = parseFloat(o) || 0, s = parseFloat(l) || 0), k.isFunction(e) && (e = e.call(t, i, k.extend({}, a))), null != e.top && (u.top = e.top - a.top + r), null != e.left && (u.left = e.left - a.left + s), "using" in e ? e.using.call(t, u) : h.css(u)
        }
    }, k.fn.extend({
        offset: function(e) {
            if (arguments.length) return void 0 === e ? this : this.each(function(t) {
                k.offset.setOffset(this, e, t)
            });
            var t, i, n, s, o = this[0];
            return o ? o.getClientRects().length ? (n = o.getBoundingClientRect()).width || n.height ? (i = Oe(s = o.ownerDocument), t = s.documentElement, {
                top: n.top + i.pageYOffset - t.clientTop,
                left: n.left + i.pageXOffset - t.clientLeft
            }) : n : {
                top: 0,
                left: 0
            } : void 0
        },
        position: function() {
            if (this[0]) {
                var t, e, i = this[0],
                    n = {
                        top: 0,
                        left: 0
                    };
                return "fixed" === k.css(i, "position") ? e = i.getBoundingClientRect() : (t = this.offsetParent(), e = this.offset(), k.nodeName(t[0], "html") || (n = t.offset()), n = {
                    top: n.top + k.css(t[0], "borderTopWidth", !0),
                    left: n.left + k.css(t[0], "borderLeftWidth", !0)
                }), {
                    top: e.top - n.top - k.css(i, "marginTop", !0),
                    left: e.left - n.left - k.css(i, "marginLeft", !0)
                }
            }
        },
        offsetParent: function() {
            return this.map(function() {
                for (var t = this.offsetParent; t && "static" === k.css(t, "position");) t = t.offsetParent;
                return t || ft
            })
        }
    }), k.each({
        scrollLeft: "pageXOffset",
        scrollTop: "pageYOffset"
    }, function(e, s) {
        var o = "pageYOffset" === s;
        k.fn[e] = function(t) {
            return R(this, function(t, e, i) {
                var n = Oe(t);
                return void 0 === i ? n ? n[s] : t[e] : void(n ? n.scrollTo(o ? n.pageXOffset : i, o ? i : n.pageYOffset) : t[e] = i)
            }, e, t, arguments.length)
        }
    }), k.each(["top", "left"], function(t, i) {
        k.cssHooks[i] = Mt(g.pixelPosition, function(t, e) {
            if (e) return e = zt(t, i), Pt.test(e) ? k(t).position()[i] + "px" : e
        })
    }), k.each({
        Height: "height",
        Width: "width"
    }, function(r, a) {
        k.each({
            padding: "inner" + r,
            content: a,
            "": "outer" + r
        }, function(n, o) {
            k.fn[o] = function(t, e) {
                var i = arguments.length && (n || "boolean" != typeof t),
                    s = n || (!0 === t || !0 === e ? "margin" : "border");
                return R(this, function(t, e, i) {
                    var n;
                    return k.isWindow(t) ? 0 === o.indexOf("outer") ? t["inner" + r] : t.document.documentElement["client" + r] : 9 === t.nodeType ? (n = t.documentElement, Math.max(t.body["scroll" + r], n["scroll" + r], t.body["offset" + r], n["offset" + r], n["client" + r])) : void 0 === i ? k.css(t, e, s) : k.style(t, e, i, s)
                }, a, i ? t : void 0, i)
            }
        })
    }), k.fn.extend({
        bind: function(t, e, i) {
            return this.on(t, null, e, i)
        },
        unbind: function(t, e) {
            return this.off(t, null, e)
        },
        delegate: function(t, e, i, n) {
            return this.on(e, t, i, n)
        },
        undelegate: function(t, e, i) {
            return 1 === arguments.length ? this.off(t, "**") : this.off(e, t || "**", i)
        }
    }), k.parseJSON = JSON.parse, "function" == typeof define && define.amd && define("jquery", [], function() {
        return k
    });
    var He = C.jQuery,
        qe = C.$;
    return k.noConflict = function(t) {
        return C.$ === k && (C.$ = qe), t && C.jQuery === k && (C.jQuery = He), k
    }, t || (C.jQuery = C.$ = k), k
}),
function(l, i, s, o) {
    function c(t, e) {
        this.settings = null, this.options = l.extend({}, c.Defaults, e), this.$element = l(t), this._handlers = {}, this._plugins = {}, this._supress = {}, this._current = null, this._speed = null, this._coordinates = [], this._breakpoint = null, this._width = null, this._items = [], this._clones = [], this._mergers = [], this._widths = [], this._invalidated = {}, this._pipe = [], this._drag = {
            time: null,
            target: null,
            pointer: null,
            stage: {
                start: null,
                current: null
            },
            direction: null
        }, this._states = {
            current: {},
            tags: {
                initializing: ["busy"],
                animating: ["busy"],
                dragging: ["interacting"]
            }
        }, l.each(["onResize", "onThrottledResize"], l.proxy(function(t, e) {
            this._handlers[e] = l.proxy(this[e], this)
        }, this)), l.each(c.Plugins, l.proxy(function(t, e) {
            this._plugins[t.charAt(0).toLowerCase() + t.slice(1)] = new e(this)
        }, this)), l.each(c.Workers, l.proxy(function(t, e) {
            this._pipe.push({
                filter: e.filter,
                run: l.proxy(e.run, this)
            })
        }, this)), this.setup(), this.initialize()
    }
    c.Defaults = {
        items: 3,
        loop: !1,
        center: !1,
        rewind: !1,
        mouseDrag: !0,
        touchDrag: !0,
        pullDrag: !0,
        freeDrag: !1,
        margin: 0,
        stagePadding: 0,
        merge: !1,
        mergeFit: !0,
        autoWidth: !1,
        startPosition: 0,
        rtl: !1,
        smartSpeed: 250,
        fluidSpeed: !1,
        dragEndSpeed: !1,
        responsive: {},
        responsiveRefreshRate: 200,
        responsiveBaseElement: i,
        fallbackEasing: "swing",
        info: !1,
        nestedItemSelector: !1,
        itemElement: "div",
        stageElement: "div",
        refreshClass: "owl-refresh",
        loadedClass: "owl-loaded",
        loadingClass: "owl-loading",
        rtlClass: "owl-rtl",
        responsiveClass: "owl-responsive",
        dragClass: "owl-drag",
        itemClass: "owl-item",
        stageClass: "owl-stage",
        stageOuterClass: "owl-stage-outer",
        grabClass: "owl-grab"
    }, c.Width = {
        Default: "default",
        Inner: "inner",
        Outer: "outer"
    }, c.Type = {
        Event: "event",
        State: "state"
    }, c.Plugins = {}, c.Workers = [{
        filter: ["width", "settings"],
        run: function() {
            this._width = this.$element.width()
        }
    }, {
        filter: ["width", "items", "settings"],
        run: function(t) {
            t.current = this._items && this._items[this.relative(this._current)]
        }
    }, {
        filter: ["items", "settings"],
        run: function() {
            this.$stage.children(".cloned").remove()
        }
    }, {
        filter: ["width", "items", "settings"],
        run: function(t) {
            var e = this.settings.margin || "",
                i = !this.settings.autoWidth,
                n = this.settings.rtl,
                s = {
                    width: "auto",
                    "margin-left": n ? e : "",
                    "margin-right": n ? "" : e
                };
            !i && this.$stage.children().css(s), t.css = s
        }
    }, {
        filter: ["width", "items", "settings"],
        run: function(t) {
            var e = (this.width() / this.settings.items).toFixed(3) - this.settings.margin,
                i = null,
                n = this._items.length,
                s = !this.settings.autoWidth,
                o = [];
            for (t.items = {
                    merge: !1,
                    width: e
                }; n--;) i = this._mergers[n], i = this.settings.mergeFit && Math.min(i, this.settings.items) || i, t.items.merge = 1 < i || t.items.merge, o[n] = s ? e * i : this._items[n].width();
            this._widths = o
        }
    }, {
        filter: ["items", "settings"],
        run: function() {
            var t = [],
                e = this._items,
                i = this.settings,
                n = Math.max(2 * i.items, 4),
                s = 2 * Math.ceil(e.length / 2),
                o = i.loop && e.length ? i.rewind ? n : Math.max(n, s) : 0,
                r = "",
                a = "";
            for (o /= 2; o--;) t.push(this.normalize(t.length / 2, !0)), r += e[t[t.length - 1]][0].outerHTML, t.push(this.normalize(e.length - 1 - (t.length - 1) / 2, !0)), a = e[t[t.length - 1]][0].outerHTML + a;
            this._clones = t, l(r).addClass("cloned").appendTo(this.$stage), l(a).addClass("cloned").prependTo(this.$stage)
        }
    }, {
        filter: ["width", "items", "settings"],
        run: function() {
            for (var t = this.settings.rtl ? 1 : -1, e = this._clones.length + this._items.length, i = -1, n = 0, s = 0, o = []; ++i < e;) n = o[i - 1] || 0, s = this._widths[this.relative(i)] + this.settings.margin, o.push(n + s * t);
            this._coordinates = o
        }
    }, {
        filter: ["width", "items", "settings"],
        run: function() {
            var t = this.settings.stagePadding,
                e = this._coordinates,
                i = {
                    width: Math.ceil(Math.abs(e[e.length - 1])) + 2 * t,
                    "padding-left": t || "",
                    "padding-right": t || ""
                };
            this.$stage.css(i)
        }
    }, {
        filter: ["width", "items", "settings"],
        run: function(t) {
            var e = this._coordinates.length,
                i = !this.settings.autoWidth,
                n = this.$stage.children();
            if (i && t.items.merge)
                for (; e--;) t.css.width = this._widths[this.relative(e)], n.eq(e).css(t.css);
            else i && (t.css.width = t.items.width, n.css(t.css))
        }
    }, {
        filter: ["items"],
        run: function() {
            this._coordinates.length < 1 && this.$stage.removeAttr("style")
        }
    }, {
        filter: ["width", "items", "settings"],
        run: function(t) {
            t.current = t.current ? this.$stage.children().index(t.current) : 0, t.current = Math.max(this.minimum(), Math.min(this.maximum(), t.current)), this.reset(t.current)
        }
    }, {
        filter: ["position"],
        run: function() {
            this.animate(this.coordinates(this._current))
        }
    }, {
        filter: ["width", "position", "items", "settings"],
        run: function() {
            var t, e, i, n, s = this.settings.rtl ? 1 : -1,
                o = 2 * this.settings.stagePadding,
                r = this.coordinates(this.current()) + o,
                a = r + this.width() * s,
                l = [];
            for (i = 0, n = this._coordinates.length; i < n; i++) t = this._coordinates[i - 1] || 0, e = Math.abs(this._coordinates[i]) + o * s, (this.op(t, "<=", r) && this.op(t, ">", a) || this.op(e, "<", r) && this.op(e, ">", a)) && l.push(i);
            this.$stage.children(".active").removeClass("active"), this.$stage.children(":eq(" + l.join("), :eq(") + ")").addClass("active"), this.settings.center && (this.$stage.children(".center").removeClass("center"), this.$stage.children().eq(this.current()).addClass("center"))
        }
    }], c.prototype.initialize = function() {
        var t, e, i;
        (this.enter("initializing"), this.trigger("initialize"), this.$element.toggleClass(this.settings.rtlClass, this.settings.rtl), this.settings.autoWidth && !this.is("pre-loading")) && (t = this.$element.find("img"), e = this.settings.nestedItemSelector ? "." + this.settings.nestedItemSelector : o, i = this.$element.children(e).width(), t.length && i <= 0 && this.preloadAutoWidthImages(t));
        this.$element.addClass(this.options.loadingClass), this.$stage = l("<" + this.settings.stageElement + ' class="' + this.settings.stageClass + '"/>').wrap('<div class="' + this.settings.stageOuterClass + '"/>'), this.$element.append(this.$stage.parent()), this.replace(this.$element.children().not(this.$stage.parent())), this.$element.is(":visible") ? this.refresh() : this.invalidate("width"), this.$element.removeClass(this.options.loadingClass).addClass(this.options.loadedClass), this.registerEventHandlers(), this.leave("initializing"), this.trigger("initialized")
    }, c.prototype.setup = function() {
        var e = this.viewport(),
            t = this.options.responsive,
            i = -1,
            n = null;
        t ? (l.each(t, function(t) {
            t <= e && i < t && (i = Number(t))
        }), "function" == typeof(n = l.extend({}, this.options, t[i])).stagePadding && (n.stagePadding = n.stagePadding()), delete n.responsive, n.responsiveClass && this.$element.attr("class", this.$element.attr("class").replace(new RegExp("(" + this.options.responsiveClass + "-)\\S+\\s", "g"), "$1" + i))) : n = l.extend({}, this.options), this.trigger("change", {
            property: {
                name: "settings",
                value: n
            }
        }), this._breakpoint = i, this.settings = n, this.invalidate("settings"), this.trigger("changed", {
            property: {
                name: "settings",
                value: this.settings
            }
        })
    }, c.prototype.optionsLogic = function() {
        this.settings.autoWidth && (this.settings.stagePadding = !1, this.settings.merge = !1)
    }, c.prototype.prepare = function(t) {
        var e = this.trigger("prepare", {
            content: t
        });
        return e.data || (e.data = l("<" + this.settings.itemElement + "/>").addClass(this.options.itemClass).append(t)), this.trigger("prepared", {
            content: e.data
        }), e.data
    }, c.prototype.update = function() {
        for (var t = 0, e = this._pipe.length, i = l.proxy(function(t) {
                return this[t]
            }, this._invalidated), n = {}; t < e;)(this._invalidated.all || 0 < l.grep(this._pipe[t].filter, i).length) && this._pipe[t].run(n), t++;
        this._invalidated = {}, !this.is("valid") && this.enter("valid")
    }, c.prototype.width = function(t) {
        switch (t = t || c.Width.Default) {
            case c.Width.Inner:
            case c.Width.Outer:
                return this._width;
            default:
                return this._width - 2 * this.settings.stagePadding + this.settings.margin
        }
    }, c.prototype.refresh = function() {
        this.enter("refreshing"), this.trigger("refresh"), this.setup(), this.optionsLogic(), this.$element.addClass(this.options.refreshClass), this.update(), this.$element.removeClass(this.options.refreshClass), this.leave("refreshing"), this.trigger("refreshed")
    }, c.prototype.onThrottledResize = function() {
        i.clearTimeout(this.resizeTimer), this.resizeTimer = i.setTimeout(this._handlers.onResize, this.settings.responsiveRefreshRate)
    }, c.prototype.onResize = function() {
        return !!this._items.length && this._width !== this.$element.width() && !!this.$element.is(":visible") && (this.enter("resizing"), this.trigger("resize").isDefaultPrevented() ? (this.leave("resizing"), !1) : (this.invalidate("width"), this.refresh(), this.leave("resizing"), void this.trigger("resized")))
    }, c.prototype.registerEventHandlers = function() {
        l.support.transition && this.$stage.on(l.support.transition.end + ".owl.core", l.proxy(this.onTransitionEnd, this)), !1 !== this.settings.responsive && this.on(i, "resize", this._handlers.onThrottledResize), this.settings.mouseDrag && (this.$element.addClass(this.options.dragClass), this.$stage.on("mousedown.owl.core", l.proxy(this.onDragStart, this)), this.$stage.on("dragstart.owl.core selectstart.owl.core", function() {
            return !1
        })), this.settings.touchDrag && (this.$stage.on("touchstart.owl.core", l.proxy(this.onDragStart, this)), this.$stage.on("touchcancel.owl.core", l.proxy(this.onDragEnd, this)))
    }, c.prototype.onDragStart = function(t) {
        var e = null;
        3 !== t.which && (l.support.transform ? e = {
            x: (e = this.$stage.css("transform").replace(/.*\(|\)| /g, "").split(","))[16 === e.length ? 12 : 4],
            y: e[16 === e.length ? 13 : 5]
        } : (e = this.$stage.position(), e = {
            x: this.settings.rtl ? e.left + this.$stage.width() - this.width() + this.settings.margin : e.left,
            y: e.top
        }), this.is("animating") && (l.support.transform ? this.animate(e.x) : this.$stage.stop(), this.invalidate("position")), this.$element.toggleClass(this.options.grabClass, "mousedown" === t.type), this.speed(0), this._drag.time = (new Date).getTime(), this._drag.target = l(t.target), this._drag.stage.start = e, this._drag.stage.current = e, this._drag.pointer = this.pointer(t), l(s).on("mouseup.owl.core touchend.owl.core", l.proxy(this.onDragEnd, this)), l(s).one("mousemove.owl.core touchmove.owl.core", l.proxy(function(t) {
            var e = this.difference(this._drag.pointer, this.pointer(t));
            l(s).on("mousemove.owl.core touchmove.owl.core", l.proxy(this.onDragMove, this)), Math.abs(e.x) < Math.abs(e.y) && this.is("valid") || (t.preventDefault(), this.enter("dragging"), this.trigger("drag"))
        }, this)))
    }, c.prototype.onDragMove = function(t) {
        var e = null,
            i = null,
            n = null,
            s = this.difference(this._drag.pointer, this.pointer(t)),
            o = this.difference(this._drag.stage.start, s);
        this.is("dragging") && (t.preventDefault(), this.settings.loop ? (e = this.coordinates(this.minimum()), i = this.coordinates(this.maximum() + 1) - e, o.x = ((o.x - e) % i + i) % i + e) : (e = this.settings.rtl ? this.coordinates(this.maximum()) : this.coordinates(this.minimum()), i = this.settings.rtl ? this.coordinates(this.minimum()) : this.coordinates(this.maximum()), n = this.settings.pullDrag ? -1 * s.x / 5 : 0, o.x = Math.max(Math.min(o.x, e + n), i + n)), this._drag.stage.current = o, this.animate(o.x))
    }, c.prototype.onDragEnd = function(t) {
        var e = this.difference(this._drag.pointer, this.pointer(t)),
            i = this._drag.stage.current,
            n = 0 < e.x ^ this.settings.rtl ? "left" : "right";
        l(s).off(".owl.core"), this.$element.removeClass(this.options.grabClass), (0 !== e.x && this.is("dragging") || !this.is("valid")) && (this.speed(this.settings.dragEndSpeed || this.settings.smartSpeed), this.current(this.closest(i.x, 0 !== e.x ? n : this._drag.direction)), this.invalidate("position"), this.update(), this._drag.direction = n, (3 < Math.abs(e.x) || 300 < (new Date).getTime() - this._drag.time) && this._drag.target.one("click.owl.core", function() {
            return !1
        })), this.is("dragging") && (this.leave("dragging"), this.trigger("dragged"))
    }, c.prototype.closest = function(i, n) {
        var s = -1,
            o = this.width(),
            r = this.coordinates();
        return this.settings.freeDrag || l.each(r, l.proxy(function(t, e) {
            return "left" === n && e - 30 < i && i < e + 30 ? s = t : "right" === n && e - o - 30 < i && i < e - o + 30 ? s = t + 1 : this.op(i, "<", e) && this.op(i, ">", r[t + 1] || e - o) && (s = "left" === n ? t + 1 : t), -1 === s
        }, this)), this.settings.loop || (this.op(i, ">", r[this.minimum()]) ? s = i = this.minimum() : this.op(i, "<", r[this.maximum()]) && (s = i = this.maximum())), s
    }, c.prototype.animate = function(t) {
        var e = 0 < this.speed();
        this.is("animating") && this.onTransitionEnd(), e && (this.enter("animating"), this.trigger("translate")), l.support.transform3d && l.support.transition ? this.$stage.css({
            transform: "translate3d(" + t + "px,0px,0px)",
            transition: this.speed() / 1e3 + "s"
        }) : e ? this.$stage.animate({
            left: t + "px"
        }, this.speed(), this.settings.fallbackEasing, l.proxy(this.onTransitionEnd, this)) : this.$stage.css({
            left: t + "px"
        })
    }, c.prototype.is = function(t) {
        return this._states.current[t] && 0 < this._states.current[t]
    }, c.prototype.current = function(t) {
        if (t === o) return this._current;
        if (0 === this._items.length) return o;
        if (t = this.normalize(t), this._current !== t) {
            var e = this.trigger("change", {
                property: {
                    name: "position",
                    value: t
                }
            });
            e.data !== o && (t = this.normalize(e.data)), this._current = t, this.invalidate("position"), this.trigger("changed", {
                property: {
                    name: "position",
                    value: this._current
                }
            })
        }
        return this._current
    }, c.prototype.invalidate = function(t) {
        return "string" === l.type(t) && (this._invalidated[t] = !0, this.is("valid") && this.leave("valid")), l.map(this._invalidated, function(t, e) {
            return e
        })
    }, c.prototype.reset = function(t) {
        (t = this.normalize(t)) !== o && (this._speed = 0, this._current = t, this.suppress(["translate", "translated"]), this.animate(this.coordinates(t)), this.release(["translate", "translated"]))
    }, c.prototype.normalize = function(t, e) {
        var i = this._items.length,
            n = e ? 0 : this._clones.length;
        return !this.isNumeric(t) || i < 1 ? t = o : (t < 0 || i + n <= t) && (t = ((t - n / 2) % i + i) % i + n / 2), t
    }, c.prototype.relative = function(t) {
        return t -= this._clones.length / 2, this.normalize(t, !0)
    }, c.prototype.maximum = function(t) {
        var e, i, n, s = this.settings,
            o = this._coordinates.length;
        if (s.loop) o = this._clones.length / 2 + this._items.length - 1;
        else if (s.autoWidth || s.merge) {
            for (e = this._items.length, i = this._items[--e].width(), n = this.$element.width(); e-- && !(n < (i += this._items[e].width() + this.settings.margin)););
            o = e + 1
        } else o = s.center ? this._items.length - 1 : this._items.length - s.items;
        return t && (o -= this._clones.length / 2), Math.max(o, 0)
    }, c.prototype.minimum = function(t) {
        return t ? 0 : this._clones.length / 2
    }, c.prototype.items = function(t) {
        return t === o ? this._items.slice() : (t = this.normalize(t, !0), this._items[t])
    }, c.prototype.mergers = function(t) {
        return t === o ? this._mergers.slice() : (t = this.normalize(t, !0), this._mergers[t])
    }, c.prototype.clones = function(i) {
        var e = this._clones.length / 2,
            n = e + this._items.length,
            s = function(t) {
                return t % 2 == 0 ? n + t / 2 : e - (t + 1) / 2
            };
        return i === o ? l.map(this._clones, function(t, e) {
            return s(e)
        }) : l.map(this._clones, function(t, e) {
            return t === i ? s(e) : null
        })
    }, c.prototype.speed = function(t) {
        return t !== o && (this._speed = t), this._speed
    }, c.prototype.coordinates = function(t) {
        var e, i = 1,
            n = t - 1;
        return t === o ? l.map(this._coordinates, l.proxy(function(t, e) {
            return this.coordinates(e)
        }, this)) : (this.settings.center ? (this.settings.rtl && (i = -1, n = t + 1), e = this._coordinates[t], e += (this.width() - e + (this._coordinates[n] || 0)) / 2 * i) : e = this._coordinates[n] || 0, e = Math.ceil(e))
    }, c.prototype.duration = function(t, e, i) {
        return 0 === i ? 0 : Math.min(Math.max(Math.abs(e - t), 1), 6) * Math.abs(i || this.settings.smartSpeed)
    }, c.prototype.to = function(t, e) {
        var i = this.current(),
            n = null,
            s = t - this.relative(i),
            o = (0 < s) - (s < 0),
            r = this._items.length,
            a = this.minimum(),
            l = this.maximum();
        this.settings.loop ? (!this.settings.rewind && Math.abs(s) > r / 2 && (s += -1 * o * r), (n = (((t = i + s) - a) % r + r) % r + a) !== t && n - s <= l && 0 < n - s && (i = n - s, t = n, this.reset(i))) : this.settings.rewind ? t = (t % (l += 1) + l) % l : t = Math.max(a, Math.min(l, t)), this.speed(this.duration(i, t, e)), this.current(t), this.$element.is(":visible") && this.update()
    }, c.prototype.next = function(t) {
        t = t || !1, this.to(this.relative(this.current()) + 1, t)
    }, c.prototype.prev = function(t) {
        t = t || !1, this.to(this.relative(this.current()) - 1, t)
    }, c.prototype.onTransitionEnd = function(t) {
        if (t !== o && (t.stopPropagation(), (t.target || t.srcElement || t.originalTarget) !== this.$stage.get(0))) return !1;
        this.leave("animating"), this.trigger("translated")
    }, c.prototype.viewport = function() {
        var t;
        return this.options.responsiveBaseElement !== i ? t = l(this.options.responsiveBaseElement).width() : i.innerWidth ? t = i.innerWidth : s.documentElement && s.documentElement.clientWidth ? t = s.documentElement.clientWidth : console.warn("Can not detect viewport width."), t
    }, c.prototype.replace = function(t) {
        this.$stage.empty(), this._items = [], t && (t = t instanceof jQuery ? t : l(t)), this.settings.nestedItemSelector && (t = t.find("." + this.settings.nestedItemSelector)), t.filter(function() {
            return 1 === this.nodeType
        }).each(l.proxy(function(t, e) {
            e = this.prepare(e), this.$stage.append(e), this._items.push(e), this._mergers.push(1 * e.find("[data-merge]").addBack("[data-merge]").attr("data-merge") || 1)
        }, this)), this.reset(this.isNumeric(this.settings.startPosition) ? this.settings.startPosition : 0), this.invalidate("items")
    }, c.prototype.add = function(t, e) {
        var i = this.relative(this._current);
        e = e === o ? this._items.length : this.normalize(e, !0), t = t instanceof jQuery ? t : l(t), this.trigger("add", {
            content: t,
            position: e
        }), t = this.prepare(t), 0 === this._items.length || e === this._items.length ? (0 === this._items.length && this.$stage.append(t), 0 !== this._items.length && this._items[e - 1].after(t), this._items.push(t), this._mergers.push(1 * t.find("[data-merge]").addBack("[data-merge]").attr("data-merge") || 1)) : (this._items[e].before(t), this._items.splice(e, 0, t), this._mergers.splice(e, 0, 1 * t.find("[data-merge]").addBack("[data-merge]").attr("data-merge") || 1)), this._items[i] && this.reset(this._items[i].index()), this.invalidate("items"), this.trigger("added", {
            content: t,
            position: e
        })
    }, c.prototype.remove = function(t) {
        (t = this.normalize(t, !0)) !== o && (this.trigger("remove", {
            content: this._items[t],
            position: t
        }), this._items[t].remove(), this._items.splice(t, 1), this._mergers.splice(t, 1), this.invalidate("items"), this.trigger("removed", {
            content: null,
            position: t
        }))
    }, c.prototype.preloadAutoWidthImages = function(t) {
        t.each(l.proxy(function(t, e) {
            this.enter("pre-loading"), e = l(e), l(new Image).one("load", l.proxy(function(t) {
                e.attr("src", t.target.src), e.css("opacity", 1), this.leave("pre-loading"), !this.is("pre-loading") && !this.is("initializing") && this.refresh()
            }, this)).attr("src", e.attr("src") || e.attr("data-src") || e.attr("data-src-retina"))
        }, this))
    }, c.prototype.destroy = function() {
        for (var t in this.$element.off(".owl.core"), this.$stage.off(".owl.core"), l(s).off(".owl.core"), !1 !== this.settings.responsive && (i.clearTimeout(this.resizeTimer), this.off(i, "resize", this._handlers.onThrottledResize)), this._plugins) this._plugins[t].destroy();
        this.$stage.children(".cloned").remove(), this.$stage.unwrap(), this.$stage.children().contents().unwrap(), this.$stage.children().unwrap(), this.$element.removeClass(this.options.refreshClass).removeClass(this.options.loadingClass).removeClass(this.options.loadedClass).removeClass(this.options.rtlClass).removeClass(this.options.dragClass).removeClass(this.options.grabClass).attr("class", this.$element.attr("class").replace(new RegExp(this.options.responsiveClass + "-\\S+\\s", "g"), "")).removeData("owl.carousel")
    }, c.prototype.op = function(t, e, i) {
        var n = this.settings.rtl;
        switch (e) {
            case "<":
                return n ? i < t : t < i;
            case ">":
                return n ? t < i : i < t;
            case ">=":
                return n ? t <= i : i <= t;
            case "<=":
                return n ? i <= t : t <= i
        }
    }, c.prototype.on = function(t, e, i, n) {
        t.addEventListener ? t.addEventListener(e, i, n) : t.attachEvent && t.attachEvent("on" + e, i)
    }, c.prototype.off = function(t, e, i, n) {
        t.removeEventListener ? t.removeEventListener(e, i, n) : t.detachEvent && t.detachEvent("on" + e, i)
    }, c.prototype.trigger = function(t, e, i, n, s) {
        var o = {
                item: {
                    count: this._items.length,
                    index: this.current()
                }
            },
            r = l.camelCase(l.grep(["on", t, i], function(t) {
                return t
            }).join("-").toLowerCase()),
            a = l.Event([t, "owl", i || "carousel"].join(".").toLowerCase(), l.extend({
                relatedTarget: this
            }, o, e));
        return this._supress[t] || (l.each(this._plugins, function(t, e) {
            e.onTrigger && e.onTrigger(a)
        }), this.register({
            type: c.Type.Event,
            name: t
        }), this.$element.trigger(a), this.settings && "function" == typeof this.settings[r] && this.settings[r].call(this, a)), a
    }, c.prototype.enter = function(t) {
        l.each([t].concat(this._states.tags[t] || []), l.proxy(function(t, e) {
            this._states.current[e] === o && (this._states.current[e] = 0), this._states.current[e]++
        }, this))
    }, c.prototype.leave = function(t) {
        l.each([t].concat(this._states.tags[t] || []), l.proxy(function(t, e) {
            this._states.current[e]--
        }, this))
    }, c.prototype.register = function(i) {
        if (i.type === c.Type.Event) {
            if (l.event.special[i.name] || (l.event.special[i.name] = {}), !l.event.special[i.name].owl) {
                var e = l.event.special[i.name]._default;
                l.event.special[i.name]._default = function(t) {
                    return !e || !e.apply || t.namespace && -1 !== t.namespace.indexOf("owl") ? t.namespace && -1 < t.namespace.indexOf("owl") : e.apply(this, arguments)
                }, l.event.special[i.name].owl = !0
            }
        } else i.type === c.Type.State && (this._states.tags[i.name] ? this._states.tags[i.name] = this._states.tags[i.name].concat(i.tags) : this._states.tags[i.name] = i.tags, this._states.tags[i.name] = l.grep(this._states.tags[i.name], l.proxy(function(t, e) {
            return l.inArray(t, this._states.tags[i.name]) === e
        }, this)))
    }, c.prototype.suppress = function(t) {
        l.each(t, l.proxy(function(t, e) {
            this._supress[e] = !0
        }, this))
    }, c.prototype.release = function(t) {
        l.each(t, l.proxy(function(t, e) {
            delete this._supress[e]
        }, this))
    }, c.prototype.pointer = function(t) {
        var e = {
            x: null,
            y: null
        };
        return (t = (t = t.originalEvent || t || i.event).touches && t.touches.length ? t.touches[0] : t.changedTouches && t.changedTouches.length ? t.changedTouches[0] : t).pageX ? (e.x = t.pageX, e.y = t.pageY) : (e.x = t.clientX, e.y = t.clientY), e
    }, c.prototype.isNumeric = function(t) {
        return !isNaN(parseFloat(t))
    }, c.prototype.difference = function(t, e) {
        return {
            x: t.x - e.x,
            y: t.y - e.y
        }
    }, l.fn.owlCarousel = function(e) {
        var n = Array.prototype.slice.call(arguments, 1);
        return this.each(function() {
            var t = l(this),
                i = t.data("owl.carousel");
            i || (i = new c(this, "object" == typeof e && e), t.data("owl.carousel", i), l.each(["next", "prev", "to", "destroy", "refresh", "replace", "add", "remove"], function(t, e) {
                i.register({
                    type: c.Type.Event,
                    name: e
                }), i.$element.on(e + ".owl.carousel.core", l.proxy(function(t) {
                    t.namespace && t.relatedTarget !== this && (this.suppress([e]), i[e].apply(this, [].slice.call(arguments, 1)), this.release([e]))
                }, i))
            })), "string" == typeof e && "_" !== e.charAt(0) && i[e].apply(i, n)
        })
    }, l.fn.owlCarousel.Constructor = c
}(window.Zepto || window.jQuery, window, document),
function(e, i, t, n) {
    var s = function(t) {
        this._core = t, this._interval = null, this._visible = null, this._handlers = {
            "initialized.owl.carousel": e.proxy(function(t) {
                t.namespace && this._core.settings.autoRefresh && this.watch()
            }, this)
        }, this._core.options = e.extend({}, s.Defaults, this._core.options), this._core.$element.on(this._handlers)
    };
    s.Defaults = {
        autoRefresh: !0,
        autoRefreshInterval: 500
    }, s.prototype.watch = function() {
        this._interval || (this._visible = this._core.$element.is(":visible"), this._interval = i.setInterval(e.proxy(this.refresh, this), this._core.settings.autoRefreshInterval))
    }, s.prototype.refresh = function() {
        this._core.$element.is(":visible") !== this._visible && (this._visible = !this._visible, this._core.$element.toggleClass("owl-hidden", !this._visible), this._visible && this._core.invalidate("width") && this._core.refresh())
    }, s.prototype.destroy = function() {
        var t, e;
        for (t in i.clearInterval(this._interval), this._handlers) this._core.$element.off(t, this._handlers[t]);
        for (e in Object.getOwnPropertyNames(this)) "function" != typeof this[e] && (this[e] = null)
    }, e.fn.owlCarousel.Constructor.Plugins.AutoRefresh = s
}(window.Zepto || window.jQuery, window, document),
function(a, o, t, e) {
    var i = function(t) {
        this._core = t, this._loaded = [], this._handlers = {
            "initialized.owl.carousel change.owl.carousel resized.owl.carousel": a.proxy(function(t) {
                if (t.namespace && this._core.settings && this._core.settings.lazyLoad && (t.property && "position" == t.property.name || "initialized" == t.type))
                    for (var e = this._core.settings, i = e.center && Math.ceil(e.items / 2) || e.items, n = e.center && -1 * i || 0, s = (t.property && void 0 !== t.property.value ? t.property.value : this._core.current()) + n, o = this._core.clones().length, r = a.proxy(function(t, e) {
                            this.load(e)
                        }, this); n++ < i;) this.load(o / 2 + this._core.relative(s)), o && a.each(this._core.clones(this._core.relative(s)), r), s++
            }, this)
        }, this._core.options = a.extend({}, i.Defaults, this._core.options), this._core.$element.on(this._handlers)
    };
    i.Defaults = {
        lazyLoad: !1
    }, i.prototype.load = function(t) {
        var e = this._core.$stage.children().eq(t),
            i = e && e.find(".owl-lazy");
        !i || -1 < a.inArray(e.get(0), this._loaded) || (i.each(a.proxy(function(t, e) {
            var i, n = a(e),
                s = 1 < o.devicePixelRatio && n.attr("data-src-retina") || n.attr("data-src");
            this._core.trigger("load", {
                element: n,
                url: s
            }, "lazy"), n.is("img") ? n.one("load.owl.lazy", a.proxy(function() {
                n.css("opacity", 1), this._core.trigger("loaded", {
                    element: n,
                    url: s
                }, "lazy")
            }, this)).attr("src", s) : ((i = new Image).onload = a.proxy(function() {
                n.css({
                    "background-image": 'url("' + s + '")',
                    opacity: "1"
                }), this._core.trigger("loaded", {
                    element: n,
                    url: s
                }, "lazy")
            }, this), i.src = s)
        }, this)), this._loaded.push(e.get(0)))
    }, i.prototype.destroy = function() {
        var t, e;
        for (t in this.handlers) this._core.$element.off(t, this.handlers[t]);
        for (e in Object.getOwnPropertyNames(this)) "function" != typeof this[e] && (this[e] = null)
    }, a.fn.owlCarousel.Constructor.Plugins.Lazy = i
}(window.Zepto || window.jQuery, window, document),
function(o, t, e, i) {
    var n = function(t) {
        this._core = t, this._handlers = {
            "initialized.owl.carousel refreshed.owl.carousel": o.proxy(function(t) {
                t.namespace && this._core.settings.autoHeight && this.update()
            }, this),
            "changed.owl.carousel": o.proxy(function(t) {
                t.namespace && this._core.settings.autoHeight && "position" == t.property.name && this.update()
            }, this),
            "loaded.owl.lazy": o.proxy(function(t) {
                t.namespace && this._core.settings.autoHeight && t.element.closest("." + this._core.settings.itemClass).index() === this._core.current() && this.update()
            }, this)
        }, this._core.options = o.extend({}, n.Defaults, this._core.options), this._core.$element.on(this._handlers)
    };
    n.Defaults = {
        autoHeight: !1,
        autoHeightClass: "owl-height"
    }, n.prototype.update = function() {
        var t, e = this._core._current,
            i = e + this._core.settings.items,
            n = this._core.$stage.children().toArray().slice(e, i),
            s = [];
        o.each(n, function(t, e) {
            s.push(o(e).height())
        }), t = Math.max.apply(null, s), this._core.$stage.parent().height(t).addClass(this._core.settings.autoHeightClass)
    }, n.prototype.destroy = function() {
        var t, e;
        for (t in this._handlers) this._core.$element.off(t, this._handlers[t]);
        for (e in Object.getOwnPropertyNames(this)) "function" != typeof this[e] && (this[e] = null)
    }, o.fn.owlCarousel.Constructor.Plugins.AutoHeight = n
}(window.Zepto || window.jQuery, window, document),
function(h, t, e, i) {
    var n = function(t) {
        this._core = t, this._videos = {}, this._playing = null, this._handlers = {
            "initialized.owl.carousel": h.proxy(function(t) {
                t.namespace && this._core.register({
                    type: "state",
                    name: "playing",
                    tags: ["interacting"]
                })
            }, this),
            "resize.owl.carousel": h.proxy(function(t) {
                t.namespace && this._core.settings.video && this.isInFullScreen() && t.preventDefault()
            }, this),
            "refreshed.owl.carousel": h.proxy(function(t) {
                t.namespace && this._core.is("resizing") && this._core.$stage.find(".cloned .owl-video-frame").remove()
            }, this),
            "changed.owl.carousel": h.proxy(function(t) {
                t.namespace && "position" === t.property.name && this._playing && this.stop()
            }, this),
            "prepared.owl.carousel": h.proxy(function(t) {
                if (t.namespace) {
                    var e = h(t.content).find(".owl-video");
                    e.length && (e.css("display", "none"), this.fetch(e, h(t.content)))
                }
            }, this)
        }, this._core.options = h.extend({}, n.Defaults, this._core.options), this._core.$element.on(this._handlers), this._core.$element.on("click.owl.video", ".owl-video-play-icon", h.proxy(function(t) {
            this.play(t)
        }, this))
    };
    n.Defaults = {
        video: !1,
        videoHeight: !1,
        videoWidth: !1
    }, n.prototype.fetch = function(t, e) {
        var i = t.attr("data-vimeo-id") ? "vimeo" : t.attr("data-vzaar-id") ? "vzaar" : "youtube",
            n = t.attr("data-vimeo-id") || t.attr("data-youtube-id") || t.attr("data-vzaar-id"),
            s = t.attr("data-width") || this._core.settings.videoWidth,
            o = t.attr("data-height") || this._core.settings.videoHeight,
            r = t.attr("href");
        if (!r) throw new Error("Missing video URL.");
        if (-1 < (n = r.match(/(http:|https:|)\/\/(player.|www.|app.)?(vimeo\.com|youtu(be\.com|\.be|be\.googleapis\.com)|vzaar\.com)\/(video\/|videos\/|embed\/|channels\/.+\/|groups\/.+\/|watch\?v=|v\/)?([A-Za-z0-9._%-]*)(\&\S+)?/))[3].indexOf("youtu")) i = "youtube";
        else if (-1 < n[3].indexOf("vimeo")) i = "vimeo";
        else {
            if (!(-1 < n[3].indexOf("vzaar"))) throw new Error("Video URL not supported.");
            i = "vzaar"
        }
        n = n[6], this._videos[r] = {
            type: i,
            id: n,
            width: s,
            height: o
        }, e.attr("data-video", r), this.thumbnail(t, this._videos[r])
    }, n.prototype.thumbnail = function(e, t) {
        var i, n, s = t.width && t.height ? 'style="width:' + t.width + "px;height:" + t.height + 'px;"' : "",
            o = e.find("img"),
            r = "src",
            a = "",
            l = this._core.settings,
            c = function(t) {
                '<div class="owl-video-play-icon"></div>',
                i = l.lazyLoad ? '<div class="owl-video-tn ' + a + '" ' + r + '="' + t + '"></div>' : '<div class="owl-video-tn" style="opacity:1;background-image:url(' + t + ')"></div>',
                e.after(i),
                e.after('<div class="owl-video-play-icon"></div>')
            };
        if (e.wrap('<div class="owl-video-wrapper"' + s + "></div>"), this._core.settings.lazyLoad && (r = "data-src", a = "owl-lazy"), o.length) return c(o.attr(r)), o.remove(), !1;
        "youtube" === t.type ? (n = "//img.youtube.com/vi/" + t.id + "/hqdefault.jpg", c(n)) : "vimeo" === t.type ? h.ajax({
            type: "GET",
            url: "//vimeo.com/api/v2/video/" + t.id + ".json",
            jsonp: "callback",
            dataType: "jsonp",
            success: function(t) {
                n = t[0].thumbnail_large, c(n)
            }
        }) : "vzaar" === t.type && h.ajax({
            type: "GET",
            url: "//vzaar.com/api/videos/" + t.id + ".json",
            jsonp: "callback",
            dataType: "jsonp",
            success: function(t) {
                n = t.framegrab_url, c(n)
            }
        })
    }, n.prototype.stop = function() {
        this._core.trigger("stop", null, "video"), this._playing.find(".owl-video-frame").remove(), this._playing.removeClass("owl-video-playing"), this._playing = null, this._core.leave("playing"), this._core.trigger("stopped", null, "video")
    }, n.prototype.play = function(t) {
        var e, i = h(t.target).closest("." + this._core.settings.itemClass),
            n = this._videos[i.attr("data-video")],
            s = n.width || "100%",
            o = n.height || this._core.$stage.height();
        this._playing || (this._core.enter("playing"), this._core.trigger("play", null, "video"), i = this._core.items(this._core.relative(i.index())), this._core.reset(i.index()), "youtube" === n.type ? e = '<iframe width="' + s + '" height="' + o + '" src="//www.youtube.com/embed/' + n.id + "?autoplay=1&rel=0&v=" + n.id + '" frameborder="0" allowfullscreen></iframe>' : "vimeo" === n.type ? e = '<iframe src="//player.vimeo.com/video/' + n.id + '?autoplay=1" width="' + s + '" height="' + o + '" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>' : "vzaar" === n.type && (e = '<iframe frameborder="0"height="' + o + '"width="' + s + '" allowfullscreen mozallowfullscreen webkitAllowFullScreen src="//view.vzaar.com/' + n.id + '/player?autoplay=true"></iframe>'), h('<div class="owl-video-frame">' + e + "</div>").insertAfter(i.find(".owl-video")), this._playing = i.addClass("owl-video-playing"))
    }, n.prototype.isInFullScreen = function() {
        var t = e.fullscreenElement || e.mozFullScreenElement || e.webkitFullscreenElement;
        return t && h(t).parent().hasClass("owl-video-frame")
    }, n.prototype.destroy = function() {
        var t, e;
        for (t in this._core.$element.off("click.owl.video"), this._handlers) this._core.$element.off(t, this._handlers[t]);
        for (e in Object.getOwnPropertyNames(this)) "function" != typeof this[e] && (this[e] = null)
    }, h.fn.owlCarousel.Constructor.Plugins.Video = n
}(window.Zepto || window.jQuery, window, document),
function(r, t, e, i) {
    var n = function(t) {
        this.core = t, this.core.options = r.extend({}, n.Defaults, this.core.options), this.swapping = !0, this.previous = void 0, this.next = void 0, this.handlers = {
            "change.owl.carousel": r.proxy(function(t) {
                t.namespace && "position" == t.property.name && (this.previous = this.core.current(), this.next = t.property.value)
            }, this),
            "drag.owl.carousel dragged.owl.carousel translated.owl.carousel": r.proxy(function(t) {
                t.namespace && (this.swapping = "translated" == t.type)
            }, this),
            "translate.owl.carousel": r.proxy(function(t) {
                t.namespace && this.swapping && (this.core.options.animateOut || this.core.options.animateIn) && this.swap()
            }, this)
        }, this.core.$element.on(this.handlers)
    };
    n.Defaults = {
        animateOut: !1,
        animateIn: !1
    }, n.prototype.swap = function() {
        if (1 === this.core.settings.items && r.support.animation && r.support.transition) {
            this.core.speed(0);
            var t, e = r.proxy(this.clear, this),
                i = this.core.$stage.children().eq(this.previous),
                n = this.core.$stage.children().eq(this.next),
                s = this.core.settings.animateIn,
                o = this.core.settings.animateOut;
            this.core.current() !== this.previous && (o && (t = this.core.coordinates(this.previous) - this.core.coordinates(this.next), i.one(r.support.animation.end, e).css({
                left: t + "px"
            }).addClass("animated owl-animated-out").addClass(o)), s && n.one(r.support.animation.end, e).addClass("animated owl-animated-in").addClass(s))
        }
    }, n.prototype.clear = function(t) {
        r(t.target).css({
            left: ""
        }).removeClass("animated owl-animated-out owl-animated-in").removeClass(this.core.settings.animateIn).removeClass(this.core.settings.animateOut), this.core.onTransitionEnd()
    }, n.prototype.destroy = function() {
        var t, e;
        for (t in this.handlers) this.core.$element.off(t, this.handlers[t]);
        for (e in Object.getOwnPropertyNames(this)) "function" != typeof this[e] && (this[e] = null)
    }, r.fn.owlCarousel.Constructor.Plugins.Animate = n
}(window.Zepto || window.jQuery, window, document),
function(i, n, s, t) {
    var e = function(t) {
        this._core = t, this._timeout = null, this._paused = !1, this._handlers = {
            "changed.owl.carousel": i.proxy(function(t) {
                t.namespace && "settings" === t.property.name ? this._core.settings.autoplay ? this.play() : this.stop() : t.namespace && "position" === t.property.name && this._core.settings.autoplay && this._setAutoPlayInterval()
            }, this),
            "initialized.owl.carousel": i.proxy(function(t) {
                t.namespace && this._core.settings.autoplay && this.play()
            }, this),
            "play.owl.autoplay": i.proxy(function(t, e, i) {
                t.namespace && this.play(e, i)
            }, this),
            "stop.owl.autoplay": i.proxy(function(t) {
                t.namespace && this.stop()
            }, this),
            "mouseover.owl.autoplay": i.proxy(function() {
                this._core.settings.autoplayHoverPause && this._core.is("rotating") && this.pause()
            }, this),
            "mouseleave.owl.autoplay": i.proxy(function() {
                this._core.settings.autoplayHoverPause && this._core.is("rotating") && this.play()
            }, this),
            "touchstart.owl.core": i.proxy(function() {
                this._core.settings.autoplayHoverPause && this._core.is("rotating") && this.pause()
            }, this),
            "touchend.owl.core": i.proxy(function() {
                this._core.settings.autoplayHoverPause && this.play()
            }, this)
        }, this._core.$element.on(this._handlers), this._core.options = i.extend({}, e.Defaults, this._core.options)
    };
    e.Defaults = {
        autoplay: !1,
        autoplayTimeout: 5e3,
        autoplayHoverPause: !1,
        autoplaySpeed: !1
    }, e.prototype.play = function(t, e) {
        this._paused = !1, this._core.is("rotating") || (this._core.enter("rotating"), this._setAutoPlayInterval())
    }, e.prototype._getNextTimeout = function(t, e) {
        return this._timeout && n.clearTimeout(this._timeout), n.setTimeout(i.proxy(function() {
            this._paused || this._core.is("busy") || this._core.is("interacting") || s.hidden || this._core.next(e || this._core.settings.autoplaySpeed)
        }, this), t || this._core.settings.autoplayTimeout)
    }, e.prototype._setAutoPlayInterval = function() {
        this._timeout = this._getNextTimeout()
    }, e.prototype.stop = function() {
        this._core.is("rotating") && (n.clearTimeout(this._timeout), this._core.leave("rotating"))
    }, e.prototype.pause = function() {
        this._core.is("rotating") && (this._paused = !0)
    }, e.prototype.destroy = function() {
        var t, e;
        for (t in this.stop(), this._handlers) this._core.$element.off(t, this._handlers[t]);
        for (e in Object.getOwnPropertyNames(this)) "function" != typeof this[e] && (this[e] = null)
    }, i.fn.owlCarousel.Constructor.Plugins.autoplay = e
}(window.Zepto || window.jQuery, window, document),
function(o, t, e, i) {
    "use strict";
    var n = function(t) {
        this._core = t, this._initialized = !1, this._pages = [], this._controls = {}, this._templates = [], this.$element = this._core.$element, this._overrides = {
            next: this._core.next,
            prev: this._core.prev,
            to: this._core.to
        }, this._handlers = {
            "prepared.owl.carousel": o.proxy(function(t) {
                t.namespace && this._core.settings.dotsData && this._templates.push('<div class="' + this._core.settings.dotClass + '">' + o(t.content).find("[data-dot]").addBack("[data-dot]").attr("data-dot") + "</div>")
            }, this),
            "added.owl.carousel": o.proxy(function(t) {
                t.namespace && this._core.settings.dotsData && this._templates.splice(t.position, 0, this._templates.pop())
            }, this),
            "remove.owl.carousel": o.proxy(function(t) {
                t.namespace && this._core.settings.dotsData && this._templates.splice(t.position, 1)
            }, this),
            "changed.owl.carousel": o.proxy(function(t) {
                t.namespace && "position" == t.property.name && this.draw()
            }, this),
            "initialized.owl.carousel": o.proxy(function(t) {
                t.namespace && !this._initialized && (this._core.trigger("initialize", null, "navigation"), this.initialize(), this.update(), this.draw(), this._initialized = !0, this._core.trigger("initialized", null, "navigation"))
            }, this),
            "refreshed.owl.carousel": o.proxy(function(t) {
                t.namespace && this._initialized && (this._core.trigger("refresh", null, "navigation"), this.update(), this.draw(), this._core.trigger("refreshed", null, "navigation"))
            }, this)
        }, this._core.options = o.extend({}, n.Defaults, this._core.options), this.$element.on(this._handlers)
    };
    n.Defaults = {
        nav: !1,
        navText: ["prev", "next"],
        navSpeed: !1,
        navElement: "div",
        navContainer: !1,
        navContainerClass: "owl-nav",
        navClass: ["owl-prev", "owl-next"],
        slideBy: 1,
        dotClass: "owl-dot",
        dotsClass: "owl-dots",
        dots: !0,
        dotsEach: !1,
        dotsData: !1,
        dotsSpeed: !1,
        dotsContainer: !1
    }, n.prototype.initialize = function() {
        var t, i = this._core.settings;
        for (t in this._controls.$relative = (i.navContainer ? o(i.navContainer) : o("<div>").addClass(i.navContainerClass).appendTo(this.$element)).addClass("disabled"), this._controls.$previous = o("<" + i.navElement + ">").addClass(i.navClass[0]).html(i.navText[0]).prependTo(this._controls.$relative).on("click", o.proxy(function(t) {
                this.prev(i.navSpeed)
            }, this)), this._controls.$next = o("<" + i.navElement + ">").addClass(i.navClass[1]).html(i.navText[1]).appendTo(this._controls.$relative).on("click", o.proxy(function(t) {
                this.next(i.navSpeed)
            }, this)), i.dotsData || (this._templates = [o("<div>").addClass(i.dotClass).append(o("<span>")).prop("outerHTML")]), this._controls.$absolute = (i.dotsContainer ? o(i.dotsContainer) : o("<div>").addClass(i.dotsClass).appendTo(this.$element)).addClass("disabled"), this._controls.$absolute.on("click", "div", o.proxy(function(t) {
                var e = o(t.target).parent().is(this._controls.$absolute) ? o(t.target).index() : o(t.target).parent().index();
                t.preventDefault(), this.to(e, i.dotsSpeed)
            }, this)), this._overrides) this._core[t] = o.proxy(this[t], this)
    }, n.prototype.destroy = function() {
        var t, e, i, n;
        for (t in this._handlers) this.$element.off(t, this._handlers[t]);
        for (e in this._controls) this._controls[e].remove();
        for (n in this.overides) this._core[n] = this._overrides[n];
        for (i in Object.getOwnPropertyNames(this)) "function" != typeof this[i] && (this[i] = null)
    }, n.prototype.update = function() {
        var t, e, i = this._core.clones().length / 2,
            n = i + this._core.items().length,
            s = this._core.maximum(!0),
            o = this._core.settings,
            r = o.center || o.autoWidth || o.dotsData ? 1 : o.dotsEach || o.items;
        if ("page" !== o.slideBy && (o.slideBy = Math.min(o.slideBy, o.items)), o.dots || "page" == o.slideBy)
            for (this._pages = [], t = i, e = 0; t < n; t++) {
                if (r <= e || 0 === e) {
                    if (this._pages.push({
                            start: Math.min(s, t - i),
                            end: t - i + r - 1
                        }), Math.min(s, t - i) === s) break;
                    e = 0, 0
                }
                e += this._core.mergers(this._core.relative(t))
            }
    }, n.prototype.draw = function() {
        var t, e = this._core.settings,
            i = this._core.items().length <= e.items,
            n = this._core.relative(this._core.current()),
            s = e.loop || e.rewind;
        this._controls.$relative.toggleClass("disabled", !e.nav || i), e.nav && (this._controls.$previous.toggleClass("disabled", !s && n <= this._core.minimum(!0)), this._controls.$next.toggleClass("disabled", !s && n >= this._core.maximum(!0))), this._controls.$absolute.toggleClass("disabled", !e.dots || i), e.dots && (t = this._pages.length - this._controls.$absolute.children().length, e.dotsData && 0 !== t ? this._controls.$absolute.html(this._templates.join("")) : 0 < t ? this._controls.$absolute.append(new Array(t + 1).join(this._templates[0])) : t < 0 && this._controls.$absolute.children().slice(t).remove(), this._controls.$absolute.find(".active").removeClass("active"), this._controls.$absolute.children().eq(o.inArray(this.current(), this._pages)).addClass("active"))
    }, n.prototype.onTrigger = function(t) {
        var e = this._core.settings;
        t.page = {
            index: o.inArray(this.current(), this._pages),
            count: this._pages.length,
            size: e && (e.center || e.autoWidth || e.dotsData ? 1 : e.dotsEach || e.items)
        }
    }, n.prototype.current = function() {
        var i = this._core.relative(this._core.current());
        return o.grep(this._pages, o.proxy(function(t, e) {
            return t.start <= i && t.end >= i
        }, this)).pop()
    }, n.prototype.getPosition = function(t) {
        var e, i, n = this._core.settings;
        return "page" == n.slideBy ? (e = o.inArray(this.current(), this._pages), i = this._pages.length, t ? ++e : --e, e = this._pages[(e % i + i) % i].start) : (e = this._core.relative(this._core.current()), i = this._core.items().length, t ? e += n.slideBy : e -= n.slideBy), e
    }, n.prototype.next = function(t) {
        o.proxy(this._overrides.to, this._core)(this.getPosition(!0), t)
    }, n.prototype.prev = function(t) {
        o.proxy(this._overrides.to, this._core)(this.getPosition(!1), t)
    }, n.prototype.to = function(t, e, i) {
        var n;
        !i && this._pages.length ? (n = this._pages.length, o.proxy(this._overrides.to, this._core)(this._pages[(t % n + n) % n].start, e)) : o.proxy(this._overrides.to, this._core)(t, e)
    }, o.fn.owlCarousel.Constructor.Plugins.Navigation = n
}(window.Zepto || window.jQuery, window, document),
function(n, s, t, e) {
    "use strict";
    var i = function(t) {
        this._core = t, this._hashes = {}, this.$element = this._core.$element, this._handlers = {
            "initialized.owl.carousel": n.proxy(function(t) {
                t.namespace && "URLHash" === this._core.settings.startPosition && n(s).trigger("hashchange.owl.navigation")
            }, this),
            "prepared.owl.carousel": n.proxy(function(t) {
                if (t.namespace) {
                    var e = n(t.content).find("[data-hash]").addBack("[data-hash]").attr("data-hash");
                    if (!e) return;
                    this._hashes[e] = t.content
                }
            }, this),
            "changed.owl.carousel": n.proxy(function(t) {
                if (t.namespace && "position" === t.property.name) {
                    var i = this._core.items(this._core.relative(this._core.current())),
                        e = n.map(this._hashes, function(t, e) {
                            return t === i ? e : null
                        }).join();
                    if (!e || s.location.hash.slice(1) === e) return;
                    s.location.hash = e
                }
            }, this)
        }, this._core.options = n.extend({}, i.Defaults, this._core.options), this.$element.on(this._handlers), n(s).on("hashchange.owl.navigation", n.proxy(function(t) {
            var e = s.location.hash.substring(1),
                i = this._core.$stage.children(),
                n = this._hashes[e] && i.index(this._hashes[e]);
            void 0 !== n && n !== this._core.current() && this._core.to(this._core.relative(n), !1, !0)
        }, this))
    };
    i.Defaults = {
        URLhashListener: !1
    }, i.prototype.destroy = function() {
        var t, e;
        for (t in n(s).off("hashchange.owl.navigation"), this._handlers) this._core.$element.off(t, this._handlers[t]);
        for (e in Object.getOwnPropertyNames(this)) "function" != typeof this[e] && (this[e] = null)
    }, n.fn.owlCarousel.Constructor.Plugins.Hash = i
}(window.Zepto || window.jQuery, window, document),
function(s, t, e, o) {
    function i(t, i) {
        var n = !1,
            e = t.charAt(0).toUpperCase() + t.slice(1);
        return s.each((t + " " + a.join(e + " ") + e).split(" "), function(t, e) {
            if (r[e] !== o) return n = !i || e, !1
        }), n
    }

    function n(t) {
        return i(t, !0)
    }
    var r = s("<support>").get(0).style,
        a = "Webkit Moz O ms".split(" "),
        l = {
            transition: {
                end: {
                    WebkitTransition: "webkitTransitionEnd",
                    MozTransition: "transitionend",
                    OTransition: "oTransitionEnd",
                    transition: "transitionend"
                }
            },
            animation: {
                end: {
                    WebkitAnimation: "webkitAnimationEnd",
                    MozAnimation: "animationend",
                    OAnimation: "oAnimationEnd",
                    animation: "animationend"
                }
            }
        },
        c = function() {
            return !!i("transform")
        },
        h = function() {
            return !!i("perspective")
        },
        u = function() {
            return !!i("animation")
        };
    (function() {
        return !!i("transition")
    })() && (s.support.transition = new String(n("transition")), s.support.transition.end = l.transition.end[s.support.transition]), u() && (s.support.animation = new String(n("animation")), s.support.animation.end = l.animation.end[s.support.animation]), c() && (s.support.transform = new String(n("transform")), s.support.transform3d = h())
}(window.Zepto || window.jQuery, window, document),
function(t) {
    "function" == typeof define && define.amd ? define(["jquery"], t) : t("object" == typeof exports ? require("jquery") : window.jQuery || window.Zepto)
}(function(h) {
    var u, n, d, s, p, e, l = "Close",
        c = "BeforeClose",
        f = "MarkupParse",
        m = "Open",
        g = ".mfp",
        v = "mfp-ready",
        i = "mfp-removing",
        r = "mfp-prevent-close",
        t = function() {},
        a = !!window.jQuery,
        _ = h(window),
        y = function(t, e) {
            u.ev.on("mfp" + t + g, e)
        },
        b = function(t, e, i, n) {
            var s = document.createElement("div");
            return s.className = "mfp-" + t, i && (s.innerHTML = i), n ? e && e.appendChild(s) : (s = h(s), e && s.appendTo(e)), s
        },
        x = function(t, e) {
            u.ev.triggerHandler("mfp" + t, e), u.st.callbacks && (t = t.charAt(0).toLowerCase() + t.slice(1), u.st.callbacks[t] && u.st.callbacks[t].apply(u, h.isArray(e) ? e : [e]))
        },
        w = function(t) {
            return t === e && u.currTemplate.closeBtn || (u.currTemplate.closeBtn = h(u.st.closeMarkup.replace("%title%", u.st.tClose)), e = t), u.currTemplate.closeBtn
        },
        o = function() {
            h.magnificPopup.instance || ((u = new t).init(), h.magnificPopup.instance = u)
        };
    t.prototype = {
        constructor: t,
        init: function() {
            var t = navigator.appVersion;
            u.isLowIE = u.isIE8 = document.all && !document.addEventListener, u.isAndroid = /android/gi.test(t), u.isIOS = /iphone|ipad|ipod/gi.test(t), u.supportsTransition = function() {
                var t = document.createElement("p").style,
                    e = ["ms", "O", "Moz", "Webkit"];
                if (void 0 !== t.transition) return !0;
                for (; e.length;)
                    if (e.pop() + "Transition" in t) return !0;
                return !1
            }(), u.probablyMobile = u.isAndroid || u.isIOS || /(Opera Mini)|Kindle|webOS|BlackBerry|(Opera Mobi)|(Windows Phone)|IEMobile/i.test(navigator.userAgent), d = h(document), u.popupsCache = {}
        },
        open: function(t) {
            var e;
            if (!1 === t.isObj) {
                u.items = t.items.toArray(), u.index = 0;
                var i, n = t.items;
                for (e = 0; e < n.length; e++)
                    if ((i = n[e]).parsed && (i = i.el[0]), i === t.el[0]) {
                        u.index = e;
                        break
                    }
            } else u.items = h.isArray(t.items) ? t.items : [t.items], u.index = t.index || 0;
            if (!u.isOpen) {
                u.types = [], p = "", t.mainEl && t.mainEl.length ? u.ev = t.mainEl.eq(0) : u.ev = d, t.key ? (u.popupsCache[t.key] || (u.popupsCache[t.key] = {}), u.currTemplate = u.popupsCache[t.key]) : u.currTemplate = {}, u.st = h.extend(!0, {}, h.magnificPopup.defaults, t), u.fixedContentPos = "auto" === u.st.fixedContentPos ? !u.probablyMobile : u.st.fixedContentPos, u.st.modal && (u.st.closeOnContentClick = !1, u.st.closeOnBgClick = !1, u.st.showCloseBtn = !1, u.st.enableEscapeKey = !1), u.bgOverlay || (u.bgOverlay = b("bg").on("click" + g, function() {
                    u.close()
                }), u.wrap = b("wrap").attr("tabindex", -1).on("click" + g, function(t) {
                    u._checkIfClose(t.target) && u.close()
                }), u.container = b("container", u.wrap)), u.contentContainer = b("content"), u.st.preloader && (u.preloader = b("preloader", u.container, u.st.tLoading));
                var s = h.magnificPopup.modules;
                for (e = 0; e < s.length; e++) {
                    var o = s[e];
                    o = o.charAt(0).toUpperCase() + o.slice(1), u["init" + o].call(u)
                }
                x("BeforeOpen"), u.st.showCloseBtn && (u.st.closeBtnInside ? (y(f, function(t, e, i, n) {
                    i.close_replaceWith = w(n.type)
                }), p += " mfp-close-btn-in") : u.wrap.append(w())), u.st.alignTop && (p += " mfp-align-top"), u.fixedContentPos ? u.wrap.css({
                    overflow: u.st.overflowY,
                    overflowX: "hidden",
                    overflowY: u.st.overflowY
                }) : u.wrap.css({
                    top: _.scrollTop(),
                    position: "absolute"
                }), (!1 === u.st.fixedBgPos || "auto" === u.st.fixedBgPos && !u.fixedContentPos) && u.bgOverlay.css({
                    height: d.height(),
                    position: "absolute"
                }), u.st.enableEscapeKey && d.on("keyup" + g, function(t) {
                    27 === t.keyCode && u.close()
                }), _.on("resize" + g, function() {
                    u.updateSize()
                }), u.st.closeOnContentClick || (p += " mfp-auto-cursor"), p && u.wrap.addClass(p);
                var r = u.wH = _.height(),
                    a = {};
                if (u.fixedContentPos && u._hasScrollBar(r)) {
                    var l = u._getScrollbarSize();
                    l && (a.marginRight = l)
                }
                u.fixedContentPos && (u.isIE7 ? h("body, html").css("overflow", "hidden") : a.overflow = "hidden");
                var c = u.st.mainClass;
                return u.isIE7 && (c += " mfp-ie7"), c && u._addClassToMFP(c), u.updateItemHTML(), x("BuildControls"), h("html").css(a), u.bgOverlay.add(u.wrap).prependTo(u.st.prependTo || h(document.body)), u._lastFocusedEl = document.activeElement, setTimeout(function() {
                    u.content ? (u._addClassToMFP(v), u._setFocus()) : u.bgOverlay.addClass(v), d.on("focusin" + g, u._onFocusIn)
                }, 16), u.isOpen = !0, u.updateSize(r), x(m), t
            }
            u.updateItemHTML()
        },
        close: function() {
            u.isOpen && (x(c), u.isOpen = !1, u.st.removalDelay && !u.isLowIE && u.supportsTransition ? (u._addClassToMFP(i), setTimeout(function() {
                u._close()
            }, u.st.removalDelay)) : u._close())
        },
        _close: function() {
            x(l);
            var t = i + " " + v + " ";
            if (u.bgOverlay.detach(), u.wrap.detach(), u.container.empty(), u.st.mainClass && (t += u.st.mainClass + " "), u._removeClassFromMFP(t), u.fixedContentPos) {
                var e = {
                    marginRight: ""
                };
                u.isIE7 ? h("body, html").css("overflow", "") : e.overflow = "", h("html").css(e)
            }
            d.off("keyup.mfp focusin" + g), u.ev.off(g), u.wrap.attr("class", "mfp-wrap").removeAttr("style"), u.bgOverlay.attr("class", "mfp-bg"), u.container.attr("class", "mfp-container"), !u.st.showCloseBtn || u.st.closeBtnInside && !0 !== u.currTemplate[u.currItem.type] || u.currTemplate.closeBtn && u.currTemplate.closeBtn.detach(), u.st.autoFocusLast && u._lastFocusedEl && h(u._lastFocusedEl).focus(), u.currItem = null, u.content = null, u.currTemplate = null, u.prevHeight = 0, x("AfterClose")
        },
        updateSize: function(t) {
            if (u.isIOS) {
                var e = document.documentElement.clientWidth / window.innerWidth,
                    i = window.innerHeight * e;
                u.wrap.css("height", i), u.wH = i
            } else u.wH = t || _.height();
            u.fixedContentPos || u.wrap.css("height", u.wH), x("Resize")
        },
        updateItemHTML: function() {
            var t = u.items[u.index];
            u.contentContainer.detach(), u.content && u.content.detach(), t.parsed || (t = u.parseEl(u.index));
            var e = t.type;
            if (x("BeforeChange", [u.currItem ? u.currItem.type : "", e]), u.currItem = t, !u.currTemplate[e]) {
                var i = !!u.st[e] && u.st[e].markup;
                x("FirstMarkupParse", i), u.currTemplate[e] = !i || h(i)
            }
            s && s !== t.type && u.container.removeClass("mfp-" + s + "-holder");
            var n = u["get" + e.charAt(0).toUpperCase() + e.slice(1)](t, u.currTemplate[e]);
            u.appendContent(n, e), t.preloaded = !0, x("Change", t), s = t.type, u.container.prepend(u.contentContainer), x("AfterChange")
        },
        appendContent: function(t, e) {
            (u.content = t) ? u.st.showCloseBtn && u.st.closeBtnInside && !0 === u.currTemplate[e] ? u.content.find(".mfp-close").length || u.content.append(w()) : u.content = t: u.content = "", x("BeforeAppend"), u.container.addClass("mfp-" + e + "-holder"), u.contentContainer.append(u.content)
        },
        parseEl: function(t) {
            var e, i = u.items[t];
            if (i.tagName ? i = {
                    el: h(i)
                } : (e = i.type, i = {
                    data: i,
                    src: i.src
                }), i.el) {
                for (var n = u.types, s = 0; s < n.length; s++)
                    if (i.el.hasClass("mfp-" + n[s])) {
                        e = n[s];
                        break
                    } i.src = i.el.attr("data-mfp-src"), i.src || (i.src = i.el.attr("href"))
            }
            return i.type = e || u.st.type || "inline", i.index = t, i.parsed = !0, u.items[t] = i, x("ElementParse", i), u.items[t]
        },
        addGroup: function(e, i) {
            var t = function(t) {
                t.mfpEl = this, u._openClick(t, e, i)
            };
            i || (i = {});
            var n = "click.magnificPopup";
            i.mainEl = e, i.items ? (i.isObj = !0, e.off(n).on(n, t)) : (i.isObj = !1, i.delegate ? e.off(n).on(n, i.delegate, t) : (i.items = e).off(n).on(n, t))
        },
        _openClick: function(t, e, i) {
            if ((void 0 !== i.midClick ? i.midClick : h.magnificPopup.defaults.midClick) || !(2 === t.which || t.ctrlKey || t.metaKey || t.altKey || t.shiftKey)) {
                var n = void 0 !== i.disableOn ? i.disableOn : h.magnificPopup.defaults.disableOn;
                if (n)
                    if (h.isFunction(n)) {
                        if (!n.call(u)) return !0
                    } else if (_.width() < n) return !0;
                t.type && (t.preventDefault(), u.isOpen && t.stopPropagation()), i.el = h(t.mfpEl), i.delegate && (i.items = e.find(i.delegate)), u.open(i)
            }
        },
        updateStatus: function(t, e) {
            if (u.preloader) {
                n !== t && u.container.removeClass("mfp-s-" + n), e || "loading" !== t || (e = u.st.tLoading);
                var i = {
                    status: t,
                    text: e
                };
                x("UpdateStatus", i), t = i.status, e = i.text, u.preloader.html(e), u.preloader.find("a").on("click", function(t) {
                    t.stopImmediatePropagation()
                }), u.container.addClass("mfp-s-" + t), n = t
            }
        },
        _checkIfClose: function(t) {
            if (!h(t).hasClass(r)) {
                var e = u.st.closeOnContentClick,
                    i = u.st.closeOnBgClick;
                if (e && i) return !0;
                if (!u.content || h(t).hasClass("mfp-close") || u.preloader && t === u.preloader[0]) return !0;
                if (t === u.content[0] || h.contains(u.content[0], t)) {
                    if (e) return !0
                } else if (i && h.contains(document, t)) return !0;
                return !1
            }
        },
        _addClassToMFP: function(t) {
            u.bgOverlay.addClass(t), u.wrap.addClass(t)
        },
        _removeClassFromMFP: function(t) {
            this.bgOverlay.removeClass(t), u.wrap.removeClass(t)
        },
        _hasScrollBar: function(t) {
            return (u.isIE7 ? d.height() : document.body.scrollHeight) > (t || _.height())
        },
        _setFocus: function() {
            (u.st.focus ? u.content.find(u.st.focus).eq(0) : u.wrap).focus()
        },
        _onFocusIn: function(t) {
            return t.target === u.wrap[0] || h.contains(u.wrap[0], t.target) ? void 0 : (u._setFocus(), !1)
        },
        _parseMarkup: function(s, t, e) {
            var o;
            e.data && (t = h.extend(e.data, t)), x(f, [s, t, e]), h.each(t, function(t, e) {
                if (void 0 === e || !1 === e) return !0;
                if (1 < (o = t.split("_")).length) {
                    var i = s.find(g + "-" + o[0]);
                    if (0 < i.length) {
                        var n = o[1];
                        "replaceWith" === n ? i[0] !== e[0] && i.replaceWith(e) : "img" === n ? i.is("img") ? i.attr("src", e) : i.replaceWith(h("<img>").attr("src", e).attr("class", i.attr("class"))) : i.attr(o[1], e)
                    }
                } else s.find(g + "-" + t).html(e)
            })
        },
        _getScrollbarSize: function() {
            if (void 0 === u.scrollbarSize) {
                var t = document.createElement("div");
                t.style.cssText = "width: 99px; height: 99px; overflow: scroll; position: absolute; top: -9999px;", document.body.appendChild(t), u.scrollbarSize = t.offsetWidth - t.clientWidth, document.body.removeChild(t)
            }
            return u.scrollbarSize
        }
    }, h.magnificPopup = {
        instance: null,
        proto: t.prototype,
        modules: [],
        open: function(t, e) {
            return o(), (t = t ? h.extend(!0, {}, t) : {}).isObj = !0, t.index = e || 0, this.instance.open(t)
        },
        close: function() {
            return h.magnificPopup.instance && h.magnificPopup.instance.close()
        },
        registerModule: function(t, e) {
            e.options && (h.magnificPopup.defaults[t] = e.options), h.extend(this.proto, e.proto), this.modules.push(t)
        },
        defaults: {
            disableOn: 0,
            key: null,
            midClick: !1,
            mainClass: "",
            preloader: !0,
            focus: "",
            closeOnContentClick: !1,
            closeOnBgClick: !0,
            closeBtnInside: !0,
            showCloseBtn: !0,
            enableEscapeKey: !0,
            modal: !1,
            alignTop: !1,
            removalDelay: 0,
            prependTo: null,
            fixedContentPos: "auto",
            fixedBgPos: "auto",
            overflowY: "auto",
            closeMarkup: '<button title="%title%" type="button" class="mfp-close">&#215;</button>',
            tClose: "Close (Esc)",
            tLoading: "Loading...",
            autoFocusLast: !0
        }
    }, h.fn.magnificPopup = function(t) {
        o();
        var e = h(this);
        if ("string" == typeof t)
            if ("open" === t) {
                var i, n = a ? e.data("magnificPopup") : e[0].magnificPopup,
                    s = parseInt(arguments[1], 10) || 0;
                n.items ? i = n.items[s] : (i = e, n.delegate && (i = i.find(n.delegate)), i = i.eq(s)), u._openClick({
                    mfpEl: i
                }, e, n)
            } else u.isOpen && u[t].apply(u, Array.prototype.slice.call(arguments, 1));
        else t = h.extend(!0, {}, t), a ? e.data("magnificPopup", t) : e[0].magnificPopup = t, u.addGroup(e, t);
        return e
    };
    var C, $, k, T = "inline",
        E = function() {
            k && ($.after(k.addClass(C)).detach(), k = null)
        };
    h.magnificPopup.registerModule(T, {
        options: {
            hiddenClass: "hide",
            markup: "",
            tNotFound: "Content not found"
        },
        proto: {
            initInline: function() {
                u.types.push(T), y(l + "." + T, function() {
                    E()
                })
            },
            getInline: function(t, e) {
                if (E(), t.src) {
                    var i = u.st.inline,
                        n = h(t.src);
                    if (n.length) {
                        var s = n[0].parentNode;
                        s && s.tagName && ($ || (C = i.hiddenClass, $ = b(C), C = "mfp-" + C), k = n.after($).detach().removeClass(C)), u.updateStatus("ready")
                    } else u.updateStatus("error", i.tNotFound), n = h("<div>");
                    return t.inlineElement = n
                }
                return u.updateStatus("ready"), u._parseMarkup(e, {}, t), e
            }
        }
    });
    var S, j = "ajax",
        F = function() {
            S && h(document.body).removeClass(S)
        },
        D = function() {
            F(), u.req && u.req.abort()
        };
    h.magnificPopup.registerModule(j, {
        options: {
            settings: null,
            cursor: "mfp-ajax-cur",
            tError: '<a href="%url%">The content</a> could not be loaded.'
        },
        proto: {
            initAjax: function() {
                u.types.push(j), S = u.st.ajax.cursor, y(l + "." + j, D), y("BeforeChange." + j, D)
            },
            getAjax: function(s) {
                S && h(document.body).addClass(S), u.updateStatus("loading");
                var t = h.extend({
                    url: s.src,
                    success: function(t, e, i) {
                        var n = {
                            data: t,
                            xhr: i
                        };
                        x("ParseAjax", n), u.appendContent(h(n.data), j), s.finished = !0, F(), u._setFocus(), setTimeout(function() {
                            u.wrap.addClass(v)
                        }, 16), u.updateStatus("ready"), x("AjaxContentAdded")
                    },
                    error: function() {
                        F(), s.finished = s.loadError = !0, u.updateStatus("error", u.st.ajax.tError.replace("%url%", s.src))
                    }
                }, u.st.ajax.settings);
                return u.req = h.ajax(t), ""
            }
        }
    });
    var N;
    h.magnificPopup.registerModule("image", {
        options: {
            markup: '<div class="mfp-figure"><div class="mfp-close"></div><figure><div class="mfp-img"></div><figcaption><div class="mfp-bottom-bar"><div class="mfp-title"></div><div class="mfp-counter"></div></div></figcaption></figure></div>',
            cursor: "mfp-zoom-out-cur",
            titleSrc: "title",
            verticalFit: !0,
            tError: '<a href="%url%">The image</a> could not be loaded.'
        },
        proto: {
            initImage: function() {
                var t = u.st.image,
                    e = ".image";
                u.types.push("image"), y(m + e, function() {
                    "image" === u.currItem.type && t.cursor && h(document.body).addClass(t.cursor)
                }), y(l + e, function() {
                    t.cursor && h(document.body).removeClass(t.cursor), _.off("resize" + g)
                }), y("Resize" + e, u.resizeImage), u.isLowIE && y("AfterChange", u.resizeImage)
            },
            resizeImage: function() {
                var t = u.currItem;
                if (t && t.img && u.st.image.verticalFit) {
                    var e = 0;
                    u.isLowIE && (e = parseInt(t.img.css("padding-top"), 10) + parseInt(t.img.css("padding-bottom"), 10)), t.img.css("max-height", u.wH - e)
                }
            },
            _onImageHasSize: function(t) {
                t.img && (t.hasSize = !0, N && clearInterval(N), t.isCheckingImgSize = !1, x("ImageHasSize", t), t.imgHidden && (u.content && u.content.removeClass("mfp-loading"), t.imgHidden = !1))
            },
            findImageSize: function(e) {
                var i = 0,
                    n = e.img[0],
                    s = function(t) {
                        N && clearInterval(N), N = setInterval(function() {
                            return 0 < n.naturalWidth ? void u._onImageHasSize(e) : (200 < i && clearInterval(N), void(3 === ++i ? s(10) : 40 === i ? s(50) : 100 === i && s(500)))
                        }, t)
                    };
                s(1)
            },
            getImage: function(t, e) {
                var i = 0,
                    n = function() {
                        t && (t.img[0].complete ? (t.img.off(".mfploader"), t === u.currItem && (u._onImageHasSize(t), u.updateStatus("ready")), t.hasSize = !0, t.loaded = !0, x("ImageLoadComplete")) : ++i < 200 ? setTimeout(n, 100) : s())
                    },
                    s = function() {
                        t && (t.img.off(".mfploader"), t === u.currItem && (u._onImageHasSize(t), u.updateStatus("error", o.tError.replace("%url%", t.src))), t.hasSize = !0, t.loaded = !0, t.loadError = !0)
                    },
                    o = u.st.image,
                    r = e.find(".mfp-img");
                if (r.length) {
                    var a = document.createElement("img");
                    a.className = "mfp-img", t.el && t.el.find("img").length && (a.alt = t.el.find("img").attr("alt")), t.img = h(a).on("load.mfploader", n).on("error.mfploader", s), a.src = t.src, r.is("img") && (t.img = t.img.clone()), 0 < (a = t.img[0]).naturalWidth ? t.hasSize = !0 : a.width || (t.hasSize = !1)
                }
                return u._parseMarkup(e, {
                    title: function(t) {
                        if (t.data && void 0 !== t.data.title) return t.data.title;
                        var e = u.st.image.titleSrc;
                        if (e) {
                            if (h.isFunction(e)) return e.call(u, t);
                            if (t.el) return t.el.attr(e) || ""
                        }
                        return ""
                    }(t),
                    img_replaceWith: t.img
                }, t), u.resizeImage(), t.hasSize ? (N && clearInterval(N), t.loadError ? (e.addClass("mfp-loading"), u.updateStatus("error", o.tError.replace("%url%", t.src))) : (e.removeClass("mfp-loading"), u.updateStatus("ready"))) : (u.updateStatus("loading"), t.loading = !0, t.hasSize || (t.imgHidden = !0, e.addClass("mfp-loading"), u.findImageSize(t))), e
            }
        }
    });
    var I;
    h.magnificPopup.registerModule("zoom", {
        options: {
            enabled: !1,
            easing: "ease-in-out",
            duration: 300,
            opener: function(t) {
                return t.is("img") ? t : t.find("img")
            }
        },
        proto: {
            initZoom: function() {
                var t, o = u.st.zoom,
                    e = ".zoom";
                if (o.enabled && u.supportsTransition) {
                    var i, n, s = o.duration,
                        r = function(t) {
                            var e = t.clone().removeAttr("style").removeAttr("class").addClass("mfp-animated-image"),
                                i = "all " + o.duration / 1e3 + "s " + o.easing,
                                n = {
                                    position: "fixed",
                                    zIndex: 9999,
                                    left: 0,
                                    top: 0,
                                    "-webkit-backface-visibility": "hidden"
                                },
                                s = "transition";
                            return n["-webkit-" + s] = n["-moz-" + s] = n["-o-" + s] = n[s] = i, e.css(n), e
                        },
                        a = function() {
                            u.content.css("visibility", "visible")
                        };
                    y("BuildControls" + e, function() {
                        if (u._allowZoom()) {
                            if (clearTimeout(i), u.content.css("visibility", "hidden"), !(t = u._getItemToZoom())) return void a();
                            (n = r(t)).css(u._getOffset()), u.wrap.append(n), i = setTimeout(function() {
                                n.css(u._getOffset(!0)), i = setTimeout(function() {
                                    a(), setTimeout(function() {
                                        n.remove(), t = n = null, x("ZoomAnimationEnded")
                                    }, 16)
                                }, s)
                            }, 16)
                        }
                    }), y(c + e, function() {
                        if (u._allowZoom()) {
                            if (clearTimeout(i), u.st.removalDelay = s, !t) {
                                if (!(t = u._getItemToZoom())) return;
                                n = r(t)
                            }
                            n.css(u._getOffset(!0)), u.wrap.append(n), u.content.css("visibility", "hidden"), setTimeout(function() {
                                n.css(u._getOffset())
                            }, 16)
                        }
                    }), y(l + e, function() {
                        u._allowZoom() && (a(), n && n.remove(), t = null)
                    })
                }
            },
            _allowZoom: function() {
                return "image" === u.currItem.type
            },
            _getItemToZoom: function() {
                return !!u.currItem.hasSize && u.currItem.img
            },
            _getOffset: function(t) {
                var e, i = (e = t ? u.currItem.img : u.st.zoom.opener(u.currItem.el || u.currItem)).offset(),
                    n = parseInt(e.css("padding-top"), 10),
                    s = parseInt(e.css("padding-bottom"), 10);
                i.top -= h(window).scrollTop() - n;
                var o = {
                    width: e.width(),
                    height: (a ? e.innerHeight() : e[0].offsetHeight) - s - n
                };
                return void 0 === I && (I = void 0 !== document.createElement("p").style.MozTransform), I ? o["-moz-transform"] = o.transform = "translate(" + i.left + "px," + i.top + "px)" : (o.left = i.left, o.top = i.top), o
            }
        }
    });
    var P = "iframe",
        A = function(t) {
            if (u.currTemplate[P]) {
                var e = u.currTemplate[P].find("iframe");
                e.length && (t || (e[0].src = "//about:blank"), u.isIE8 && e.css("display", t ? "block" : "none"))
            }
        };
    h.magnificPopup.registerModule(P, {
        options: {
            markup: '<div class="mfp-iframe-scaler"><div class="mfp-close"></div><iframe class="mfp-iframe" src="//about:blank" frameborder="0" allowfullscreen></iframe></div>',
            srcAction: "iframe_src",
            patterns: {
                youtube: {
                    index: "youtube.com",
                    id: "v=",
                    src: "//www.youtube.com/embed/%id%?autoplay=1"
                },
                vimeo: {
                    index: "vimeo.com/",
                    id: "/",
                    src: "//player.vimeo.com/video/%id%?autoplay=1"
                },
                gmaps: {
                    index: "//maps.google.",
                    src: "%id%&output=embed"
                }
            }
        },
        proto: {
            initIframe: function() {
                u.types.push(P), y("BeforeChange", function(t, e, i) {
                    e !== i && (e === P ? A() : i === P && A(!0))
                }), y(l + "." + P, function() {
                    A()
                })
            },
            getIframe: function(t, e) {
                var i = t.src,
                    n = u.st.iframe;
                h.each(n.patterns, function() {
                    return -1 < i.indexOf(this.index) ? (this.id && (i = "string" == typeof this.id ? i.substr(i.lastIndexOf(this.id) + this.id.length, i.length) : this.id.call(this, i)), i = this.src.replace("%id%", i), !1) : void 0
                });
                var s = {};
                return n.srcAction && (s[n.srcAction] = i), u._parseMarkup(e, s, t), u.updateStatus("ready"), e
            }
        }
    });
    var z = function(t) {
            var e = u.items.length;
            return e - 1 < t ? t - e : t < 0 ? e + t : t
        },
        M = function(t, e, i) {
            return t.replace(/%curr%/gi, e + 1).replace(/%total%/gi, i)
        };
    h.magnificPopup.registerModule("gallery", {
        options: {
            enabled: !1,
            arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>',
            preload: [0, 2],
            navigateByImgClick: !0,
            arrows: !0,
            tPrev: "Previous (Left arrow key)",
            tNext: "Next (Right arrow key)",
            tCounter: "%curr% of %total%"
        },
        proto: {
            initGallery: function() {
                var o = u.st.gallery,
                    t = ".mfp-gallery";
                return u.direction = !0, !(!o || !o.enabled) && (p += " mfp-gallery", y(m + t, function() {
                    o.navigateByImgClick && u.wrap.on("click" + t, ".mfp-img", function() {
                        return 1 < u.items.length ? (u.next(), !1) : void 0
                    }), d.on("keydown" + t, function(t) {
                        37 === t.keyCode ? u.prev() : 39 === t.keyCode && u.next()
                    })
                }), y("UpdateStatus" + t, function(t, e) {
                    e.text && (e.text = M(e.text, u.currItem.index, u.items.length))
                }), y(f + t, function(t, e, i, n) {
                    var s = u.items.length;
                    i.counter = 1 < s ? M(o.tCounter, n.index, s) : ""
                }), y("BuildControls" + t, function() {
                    if (1 < u.items.length && o.arrows && !u.arrowLeft) {
                        var t = o.arrowMarkup,
                            e = u.arrowLeft = h(t.replace(/%title%/gi, o.tPrev).replace(/%dir%/gi, "left")).addClass(r),
                            i = u.arrowRight = h(t.replace(/%title%/gi, o.tNext).replace(/%dir%/gi, "right")).addClass(r);
                        e.click(function() {
                            u.prev()
                        }), i.click(function() {
                            u.next()
                        }), u.container.append(e.add(i))
                    }
                }), y("Change" + t, function() {
                    u._preloadTimeout && clearTimeout(u._preloadTimeout), u._preloadTimeout = setTimeout(function() {
                        u.preloadNearbyImages(), u._preloadTimeout = null
                    }, 16)
                }), void y(l + t, function() {
                    d.off(t), u.wrap.off("click" + t), u.arrowRight = u.arrowLeft = null
                }))
            },
            next: function() {
                u.direction = !0, u.index = z(u.index + 1), u.updateItemHTML()
            },
            prev: function() {
                u.direction = !1, u.index = z(u.index - 1), u.updateItemHTML()
            },
            goTo: function(t) {
                u.direction = t >= u.index, u.index = t, u.updateItemHTML()
            },
            preloadNearbyImages: function() {
                var t, e = u.st.gallery.preload,
                    i = Math.min(e[0], u.items.length),
                    n = Math.min(e[1], u.items.length);
                for (t = 1; t <= (u.direction ? n : i); t++) u._preloadItem(u.index + t);
                for (t = 1; t <= (u.direction ? i : n); t++) u._preloadItem(u.index - t)
            },
            _preloadItem: function(t) {
                if (t = z(t), !u.items[t].preloaded) {
                    var e = u.items[t];
                    e.parsed || (e = u.parseEl(t)), x("LazyLoad", e), "image" === e.type && (e.img = h('<img class="mfp-img" />').on("load.mfploader", function() {
                        e.hasSize = !0
                    }).on("error.mfploader", function() {
                        e.hasSize = !0, e.loadError = !0, x("LazyLoadError", e)
                    }).attr("src", e.src)), e.preloaded = !0
                }
            }
        }
    });
    var L = "retina";
    h.magnificPopup.registerModule(L, {
        options: {
            replaceSrc: function(t) {
                return t.src.replace(/\.\w+$/, function(t) {
                    return "@2x" + t
                })
            },
            ratio: 1
        },
        proto: {
            initRetina: function() {
                if (1 < window.devicePixelRatio) {
                    var i = u.st.retina,
                        n = i.ratio;
                    1 < (n = isNaN(n) ? n() : n) && (y("ImageHasSize." + L, function(t, e) {
                        e.img.css({
                            "max-width": e.img[0].naturalWidth / n,
                            width: "100%"
                        })
                    }), y("ElementParse." + L, function(t, e) {
                        e.src = i.replaceSrc(e, n)
                    }))
                }
            }
        }
    }), o()
}),
function(t, e) {
    if ("function" == typeof define && define.amd) define(["exports", "module"], e);
    else if ("undefined" != typeof exports && "undefined" != typeof module) e(exports, module);
    else {
        var i = {
            exports: {}
        };
        e(i.exports, i), t.autosize = i.exports
    }
}(this, function(t, e) {
    "use strict";

    function i(s) {
        function o(t) {
            var e = s.style.width;
            s.style.width = "0px", s.offsetWidth, s.style.width = e, s.style.overflowY = t
        }

        function r() {
            var t = s.style.height,
                e = function(t) {
                    for (var e = []; t && t.parentNode && t.parentNode instanceof Element;) t.parentNode.scrollTop && e.push({
                        node: t.parentNode,
                        scrollTop: t.parentNode.scrollTop
                    }), t = t.parentNode;
                    return e
                }(s),
                i = document.documentElement && document.documentElement.scrollTop;
            s.style.height = "";
            var n = s.scrollHeight + a;
            return 0 === s.scrollHeight ? void(s.style.height = t) : (s.style.height = n + "px", l = s.clientWidth, e.forEach(function(t) {
                t.node.scrollTop = t.scrollTop
            }), void(i && (document.documentElement.scrollTop = i)))
        }

        function t() {
            r();
            var t = Math.round(parseFloat(s.style.height)),
                e = window.getComputedStyle(s, null),
                i = "content-box" === e.boxSizing ? Math.round(parseFloat(e.height)) : s.offsetHeight;
            if (i !== t ? "hidden" === e.overflowY && (o("scroll"), r(), i = "content-box" === e.boxSizing ? Math.round(parseFloat(window.getComputedStyle(s, null).height)) : s.offsetHeight) : "hidden" !== e.overflowY && (o("hidden"), r(), i = "content-box" === e.boxSizing ? Math.round(parseFloat(window.getComputedStyle(s, null).height)) : s.offsetHeight), c !== i) {
                c = i;
                var n = u("autosize:resized");
                try {
                    s.dispatchEvent(n)
                } catch (t) {}
            }
        }
        if (s && s.nodeName && "TEXTAREA" === s.nodeName && !h.has(s)) {
            var a = null,
                l = s.clientWidth,
                c = null,
                i = function() {
                    s.clientWidth !== l && t()
                },
                n = function(e) {
                    window.removeEventListener("resize", i, !1), s.removeEventListener("input", t, !1), s.removeEventListener("keyup", t, !1), s.removeEventListener("autosize:destroy", n, !1), s.removeEventListener("autosize:update", t, !1), Object.keys(e).forEach(function(t) {
                        s.style[t] = e[t]
                    }), h.delete(s)
                }.bind(s, {
                    height: s.style.height,
                    resize: s.style.resize,
                    overflowY: s.style.overflowY,
                    overflowX: s.style.overflowX,
                    wordWrap: s.style.wordWrap
                });
            s.addEventListener("autosize:destroy", n, !1), "onpropertychange" in s && "oninput" in s && s.addEventListener("keyup", t, !1), window.addEventListener("resize", i, !1), s.addEventListener("input", t, !1), s.addEventListener("autosize:update", t, !1), s.style.overflowX = "hidden", s.style.wordWrap = "break-word", h.set(s, {
                destroy: n,
                update: t
            }), "vertical" === (e = window.getComputedStyle(s, null)).resize ? s.style.resize = "none" : "both" === e.resize && (s.style.resize = "horizontal"), a = "content-box" === e.boxSizing ? -(parseFloat(e.paddingTop) + parseFloat(e.paddingBottom)) : parseFloat(e.borderTopWidth) + parseFloat(e.borderBottomWidth), isNaN(a) && (a = 0), t()
        }
        var e
    }

    function n(t) {
        var e = h.get(t);
        e && e.destroy()
    }

    function s(t) {
        var e = h.get(t);
        e && e.update()
    }
    var o, r, h = "function" == typeof Map ? new Map : (o = [], r = [], {
            has: function(t) {
                return -1 < o.indexOf(t)
            },
            get: function(t) {
                return r[o.indexOf(t)]
            },
            set: function(t, e) {
                -1 === o.indexOf(t) && (o.push(t), r.push(e))
            },
            delete: function(t) {
                var e = o.indexOf(t); - 1 < e && (o.splice(e, 1), r.splice(e, 1))
            }
        }),
        u = function(t) {
            return new Event(t, {
                bubbles: !0
            })
        };
    try {
        new Event("test")
    } catch (t) {
        u = function(t) {
            var e = document.createEvent("Event");
            return e.initEvent(t, !0, !1), e
        }
    }
    var a = null;
    "undefined" == typeof window || "function" != typeof window.getComputedStyle ? ((a = function(t) {
        return t
    }).destroy = function(t) {
        return t
    }, a.update = function(t) {
        return t
    }) : ((a = function(t, e) {
        return t && Array.prototype.forEach.call(t.length ? t : [t], function(t) {
            return i(t)
        }), t
    }).destroy = function(t) {
        return t && Array.prototype.forEach.call(t.length ? t : [t], n), t
    }, a.update = function(t) {
        return t && Array.prototype.forEach.call(t.length ? t : [t], s), t
    }), e.exports = a
}),
function(t, e) {
    "function" == typeof define && define.amd ? define([], function() {
        return t.svg4everybody = e()
    }) : "object" == typeof module && module.exports ? module.exports = e() : t.svg4everybody = e()
}(this, function() {
    function g(t, e, i) {
        if (i) {
            var n = document.createDocumentFragment(),
                s = !e.hasAttribute("viewBox") && i.getAttribute("viewBox");
            s && e.setAttribute("viewBox", s);
            for (var o = i.cloneNode(!0); o.childNodes.length;) n.appendChild(o.firstChild);
            t.appendChild(n)
        }
    }

    function v(n) {
        n.onreadystatechange = function() {
            if (4 === n.readyState) {
                var i = n._cachedDocument;
                i || ((i = n._cachedDocument = document.implementation.createHTMLDocument("")).body.innerHTML = n.responseText, n._cachedTarget = {}), n._embeds.splice(0).map(function(t) {
                    var e = n._cachedTarget[t.id];
                    e || (e = n._cachedTarget[t.id] = i.getElementById(t.id)), g(t.parent, t.svg, e)
                })
            }
        }, n.onreadystatechange()
    }

    function _(t) {
        for (var e = t;
            "svg" !== e.nodeName.toLowerCase() && (e = e.parentNode););
        return e
    }
    return function(t) {
        var h, u = Object(t),
            e = window.top !== window.self;
        h = "polyfill" in u ? u.polyfill : /\bTrident\/[567]\b|\bMSIE (?:9|10)\.0\b/.test(navigator.userAgent) || (navigator.userAgent.match(/\bEdge\/12\.(\d+)\b/) || [])[1] < 10547 || (navigator.userAgent.match(/\bAppleWebKit\/(\d+)\b/) || [])[1] < 537 || /\bEdge\/.(\d+)\b/.test(navigator.userAgent) && e;
        var d = {},
            p = window.requestAnimationFrame || setTimeout,
            f = document.getElementsByTagName("use"),
            m = 0;
        h && function t() {
            for (var e = 0; e < f.length;) {
                var i = f[e],
                    n = i.parentNode,
                    s = _(n),
                    o = i.getAttribute("xlink:href") || i.getAttribute("href");
                if (!o && u.attributeName && (o = i.getAttribute(u.attributeName)), s && o) {
                    if (h)
                        if (!u.validate || u.validate(o, s, i)) {
                            n.removeChild(i);
                            var r = o.split("#"),
                                a = r.shift(),
                                l = r.join("#");
                            if (a.length) {
                                var c = d[a];
                                c || ((c = d[a] = new XMLHttpRequest).open("GET", a), c.send(), c._embeds = []), c._embeds.push({
                                    parent: n,
                                    svg: s,
                                    id: l
                                }), v(c)
                            } else g(n, s, document.getElementById(l))
                        } else ++e, ++m
                } else ++e
            }(!f.length || 0 < f.length - m) && p(t, 67)
        }()
    }
}),
function(e) {
    "function" == typeof define && define.amd ? define(["jquery"], function(t) {
        return e(t, document, window, navigator)
    }) : "object" == typeof exports ? e(require("jquery"), document, window, navigator) : e(jQuery, document, window, navigator)
}(function(o, r, a, t, l) {
    var e, i, n = 0,
        s = (e = t.userAgent, i = /msie\s\d+/i, 0 < e.search(i) && (e = (e = i.exec(e).toString()).split(" ")[1]) < 9 && (o("html").addClass("lt-ie9"), !0));
    Function.prototype.bind || (Function.prototype.bind = function(i) {
        var n = this,
            s = [].slice;
        if ("function" != typeof n) throw new TypeError;
        var o = s.call(arguments, 1),
            r = function() {
                if (this instanceof r) {
                    (t = function() {}).prototype = n.prototype;
                    var t = new t,
                        e = n.apply(t, o.concat(s.call(arguments)));
                    return Object(e) === e ? e : t
                }
                return n.apply(i, o.concat(s.call(arguments)))
            };
        return r
    }), Array.prototype.indexOf || (Array.prototype.indexOf = function(t, e) {
        if (null == this) throw new TypeError('"this" is null or not defined');
        var i = Object(this),
            n = i.length >>> 0;
        if (0 === n) return -1;
        var s = +e || 0;
        if (1 / 0 === Math.abs(s) && (s = 0), n <= s) return -1;
        for (s = Math.max(0 <= s ? s : n - Math.abs(s), 0); s < n;) {
            if (s in i && i[s] === t) return s;
            s++
        }
        return -1
    });
    var c = function(t, e, i) {
        this.VERSION = "2.2.0", this.input = t, this.plugin_count = i, this.old_to = this.old_from = this.update_tm = this.calc_count = this.current_plugin = 0, this.raf_id = this.old_min_interval = null, this.no_diapason = this.force_redraw = this.dragging = !1, this.has_tab_index = !0, this.is_update = this.is_key = !1, this.is_start = !0, this.is_click = this.is_resize = this.is_active = this.is_finish = !1, e = e || {}, this.$cache = {
            win: o(a),
            body: o(r.body),
            input: o(t),
            cont: null,
            rs: null,
            min: null,
            max: null,
            from: null,
            to: null,
            single: null,
            bar: null,
            line: null,
            s_single: null,
            s_from: null,
            s_to: null,
            shad_single: null,
            shad_from: null,
            shad_to: null,
            edge: null,
            grid: null,
            grid_labels: []
        }, this.coords = {
            x_gap: 0,
            x_pointer: 0,
            w_rs: 0,
            w_rs_old: 0,
            w_handle: 0,
            p_gap: 0,
            p_gap_left: 0,
            p_gap_right: 0,
            p_step: 0,
            p_pointer: 0,
            p_handle: 0,
            p_single_fake: 0,
            p_single_real: 0,
            p_from_fake: 0,
            p_from_real: 0,
            p_to_fake: 0,
            p_to_real: 0,
            p_bar_x: 0,
            p_bar_w: 0,
            grid_gap: 0,
            big_num: 0,
            big: [],
            big_w: [],
            big_p: [],
            big_x: []
        }, this.labels = {
            w_min: 0,
            w_max: 0,
            w_from: 0,
            w_to: 0,
            w_single: 0,
            p_min: 0,
            p_max: 0,
            p_from_fake: 0,
            p_from_left: 0,
            p_to_fake: 0,
            p_to_left: 0,
            p_single_fake: 0,
            p_single_left: 0
        };
        var n, s = this.$cache.input;
        for (n in t = s.prop("value"), i = {
                type: "single",
                min: 10,
                max: 100,
                from: null,
                to: null,
                step: 1,
                min_interval: 0,
                max_interval: 0,
                drag_interval: !1,
                values: [],
                p_values: [],
                from_fixed: !1,
                from_min: null,
                from_max: null,
                from_shadow: !1,
                to_fixed: !1,
                to_min: null,
                to_max: null,
                to_shadow: !1,
                prettify_enabled: !0,
                prettify_separator: " ",
                prettify: null,
                force_edges: !1,
                keyboard: !0,
                grid: !1,
                grid_margin: !0,
                grid_num: 4,
                grid_snap: !1,
                hide_min_max: !1,
                hide_from_to: !1,
                prefix: "",
                postfix: "",
                max_postfix: "",
                decorate_both: !0,
                values_separator: " — ",
                input_values_separator: ";",
                disable: !1,
                block: !1,
                extra_classes: "",
                scope: null,
                onStart: null,
                onChange: null,
                onFinish: null,
                onUpdate: null
            }, "INPUT" !== s[0].nodeName && console && console.warn && console.warn("Base element should be <input>!", s[0]), (s = {
                type: s.data("type"),
                min: s.data("min"),
                max: s.data("max"),
                from: s.data("from"),
                to: s.data("to"),
                step: s.data("step"),
                min_interval: s.data("minInterval"),
                max_interval: s.data("maxInterval"),
                drag_interval: s.data("dragInterval"),
                values: s.data("values"),
                from_fixed: s.data("fromFixed"),
                from_min: s.data("fromMin"),
                from_max: s.data("fromMax"),
                from_shadow: s.data("fromShadow"),
                to_fixed: s.data("toFixed"),
                to_min: s.data("toMin"),
                to_max: s.data("toMax"),
                to_shadow: s.data("toShadow"),
                prettify_enabled: s.data("prettifyEnabled"),
                prettify_separator: s.data("prettifySeparator"),
                force_edges: s.data("forceEdges"),
                keyboard: s.data("keyboard"),
                grid: s.data("grid"),
                grid_margin: s.data("gridMargin"),
                grid_num: s.data("gridNum"),
                grid_snap: s.data("gridSnap"),
                hide_min_max: s.data("hideMinMax"),
                hide_from_to: s.data("hideFromTo"),
                prefix: s.data("prefix"),
                postfix: s.data("postfix"),
                max_postfix: s.data("maxPostfix"),
                decorate_both: s.data("decorateBoth"),
                values_separator: s.data("valuesSeparator"),
                input_values_separator: s.data("inputValuesSeparator"),
                disable: s.data("disable"),
                block: s.data("block"),
                extra_classes: s.data("extraClasses")
            }).values = s.values && s.values.split(","), s) s.hasOwnProperty(n) && (s[n] !== l && "" !== s[n] || delete s[n]);
        t !== l && "" !== t && ((t = t.split(s.input_values_separator || e.input_values_separator || ";"))[0] && t[0] == +t[0] && (t[0] = +t[0]), t[1] && t[1] == +t[1] && (t[1] = +t[1]), e && e.values && e.values.length ? (i.from = t[0] && e.values.indexOf(t[0]), i.to = t[1] && e.values.indexOf(t[1])) : (i.from = t[0] && +t[0], i.to = t[1] && +t[1])), o.extend(i, e), o.extend(i, s), this.options = i, this.update_check = {}, this.validate(), this.result = {
            input: this.$cache.input,
            slider: null,
            min: this.options.min,
            max: this.options.max,
            from: this.options.from,
            from_percent: 0,
            from_value: null,
            to: this.options.to,
            to_percent: 0,
            to_value: null
        }, this.init()
    };
    c.prototype = {
            init: function(t) {
                this.no_diapason = !1, this.coords.p_step = this.convertToPercent(this.options.step, !0), this.target = "base", this.toggleInput(), this.append(), this.setMinMax(), t ? (this.force_redraw = !0, this.calc(!0), this.callOnUpdate()) : (this.force_redraw = !0, this.calc(!0), this.callOnStart()), this.updateScene()
            },
            append: function() {
                this.$cache.input.before('<span class="irs js-irs-' + this.plugin_count + " " + this.options.extra_classes + '"></span>'), this.$cache.input.prop("readonly", !0), this.$cache.cont = this.$cache.input.prev(), this.result.slider = this.$cache.cont, this.$cache.cont.html('<span class="irs"><span class="irs-line" tabindex="0"><span class="irs-line-left"></span><span class="irs-line-mid"></span><span class="irs-line-right"></span></span><span class="irs-min">0</span><span class="irs-max">1</span><span class="irs-from">0</span><span class="irs-to">0</span><span class="irs-single">0</span></span><span class="irs-grid"></span><span class="irs-bar"></span>'), this.$cache.rs = this.$cache.cont.find(".irs"), this.$cache.min = this.$cache.cont.find(".irs-min"), this.$cache.max = this.$cache.cont.find(".irs-max"), this.$cache.from = this.$cache.cont.find(".irs-from"), this.$cache.to = this.$cache.cont.find(".irs-to"), this.$cache.single = this.$cache.cont.find(".irs-single"), this.$cache.bar = this.$cache.cont.find(".irs-bar"), this.$cache.line = this.$cache.cont.find(".irs-line"), this.$cache.grid = this.$cache.cont.find(".irs-grid"), "single" === this.options.type ? (this.$cache.cont.append('<span class="irs-bar-edge"></span><span class="irs-shadow shadow-single"></span><span class="irs-slider single"></span>'), this.$cache.edge = this.$cache.cont.find(".irs-bar-edge"), this.$cache.s_single = this.$cache.cont.find(".single"), this.$cache.from[0].style.visibility = "hidden", this.$cache.to[0].style.visibility = "hidden", this.$cache.shad_single = this.$cache.cont.find(".shadow-single")) : (this.$cache.cont.append('<span class="irs-shadow shadow-from"></span><span class="irs-shadow shadow-to"></span><span class="irs-slider from"></span><span class="irs-slider to"></span>'), this.$cache.s_from = this.$cache.cont.find(".from"), this.$cache.s_to = this.$cache.cont.find(".to"), this.$cache.shad_from = this.$cache.cont.find(".shadow-from"), this.$cache.shad_to = this.$cache.cont.find(".shadow-to"), this.setTopHandler()), this.options.hide_from_to && (this.$cache.from[0].style.display = "none", this.$cache.to[0].style.display = "none", this.$cache.single[0].style.display = "none"), this.appendGrid(), this.options.disable ? (this.appendDisableMask(), this.$cache.input[0].disabled = !0) : (this.$cache.input[0].disabled = !1, this.removeDisableMask(), this.bindEvents()), this.options.disable || (this.options.block ? this.appendDisableMask() : this.removeDisableMask()), this.options.drag_interval && (this.$cache.bar[0].style.cursor = "ew-resize")
            },
            setTopHandler: function() {
                var t = this.options.max,
                    e = this.options.to;
                this.options.from > this.options.min && e === t ? this.$cache.s_from.addClass("type_last") : e < t && this.$cache.s_to.addClass("type_last")
            },
            changeLevel: function(t) {
                switch (t) {
                    case "single":
                        this.coords.p_gap = this.toFixed(this.coords.p_pointer - this.coords.p_single_fake), this.$cache.s_single.addClass("state_hover");
                        break;
                    case "from":
                        this.coords.p_gap = this.toFixed(this.coords.p_pointer - this.coords.p_from_fake), this.$cache.s_from.addClass("state_hover"), this.$cache.s_from.addClass("type_last"), this.$cache.s_to.removeClass("type_last");
                        break;
                    case "to":
                        this.coords.p_gap = this.toFixed(this.coords.p_pointer - this.coords.p_to_fake), this.$cache.s_to.addClass("state_hover"), this.$cache.s_to.addClass("type_last"), this.$cache.s_from.removeClass("type_last");
                        break;
                    case "both":
                        this.coords.p_gap_left = this.toFixed(this.coords.p_pointer - this.coords.p_from_fake), this.coords.p_gap_right = this.toFixed(this.coords.p_to_fake - this.coords.p_pointer), this.$cache.s_to.removeClass("type_last"), this.$cache.s_from.removeClass("type_last")
                }
            },
            appendDisableMask: function() {
                this.$cache.cont.append('<span class="irs-disable-mask"></span>'), this.$cache.cont.addClass("irs-disabled")
            },
            removeDisableMask: function() {
                this.$cache.cont.remove(".irs-disable-mask"), this.$cache.cont.removeClass("irs-disabled")
            },
            remove: function() {
                this.$cache.cont.remove(), this.$cache.cont = null, this.$cache.line.off("keydown.irs_" + this.plugin_count), this.$cache.body.off("touchmove.irs_" + this.plugin_count), this.$cache.body.off("mousemove.irs_" + this.plugin_count), this.$cache.win.off("touchend.irs_" + this.plugin_count), this.$cache.win.off("mouseup.irs_" + this.plugin_count), s && (this.$cache.body.off("mouseup.irs_" + this.plugin_count), this.$cache.body.off("mouseleave.irs_" + this.plugin_count)), this.$cache.grid_labels = [], this.coords.big = [], this.coords.big_w = [], this.coords.big_p = [], this.coords.big_x = [], cancelAnimationFrame(this.raf_id)
            },
            bindEvents: function() {
                this.no_diapason || (this.$cache.body.on("touchmove.irs_" + this.plugin_count, this.pointerMove.bind(this)), this.$cache.body.on("mousemove.irs_" + this.plugin_count, this.pointerMove.bind(this)), this.$cache.win.on("touchend.irs_" + this.plugin_count, this.pointerUp.bind(this)), this.$cache.win.on("mouseup.irs_" + this.plugin_count, this.pointerUp.bind(this)), this.$cache.line.on("touchstart.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.line.on("mousedown.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.line.on("focus.irs_" + this.plugin_count, this.pointerFocus.bind(this)), this.options.drag_interval && "double" === this.options.type ? (this.$cache.bar.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, "both")), this.$cache.bar.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, "both"))) : (this.$cache.bar.on("touchstart.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.bar.on("mousedown.irs_" + this.plugin_count, this.pointerClick.bind(this, "click"))), "single" === this.options.type ? (this.$cache.single.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, "single")), this.$cache.s_single.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, "single")), this.$cache.shad_single.on("touchstart.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.single.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, "single")), this.$cache.s_single.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, "single")), this.$cache.edge.on("mousedown.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.shad_single.on("mousedown.irs_" + this.plugin_count, this.pointerClick.bind(this, "click"))) : (this.$cache.single.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, null)), this.$cache.single.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, null)), this.$cache.from.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, "from")), this.$cache.s_from.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, "from")), this.$cache.to.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, "to")), this.$cache.s_to.on("touchstart.irs_" + this.plugin_count, this.pointerDown.bind(this, "to")), this.$cache.shad_from.on("touchstart.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.shad_to.on("touchstart.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.from.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, "from")), this.$cache.s_from.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, "from")), this.$cache.to.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, "to")), this.$cache.s_to.on("mousedown.irs_" + this.plugin_count, this.pointerDown.bind(this, "to")), this.$cache.shad_from.on("mousedown.irs_" + this.plugin_count, this.pointerClick.bind(this, "click")), this.$cache.shad_to.on("mousedown.irs_" + this.plugin_count, this.pointerClick.bind(this, "click"))), this.options.keyboard && this.$cache.line.on("keydown.irs_" + this.plugin_count, this.key.bind(this, "keyboard")), s && (this.$cache.body.on("mouseup.irs_" + this.plugin_count, this.pointerUp.bind(this)), this.$cache.body.on("mouseleave.irs_" + this.plugin_count, this.pointerUp.bind(this))))
            },
            pointerFocus: function(t) {
                if (!this.target) {
                    var e = "single" === this.options.type ? this.$cache.single : this.$cache.from;
                    t = e.offset().left, t += e.width() / 2 - 1, this.pointerClick("single", {
                        preventDefault: function() {},
                        pageX: t
                    })
                }
            },
            pointerMove: function(t) {
                this.dragging && (this.coords.x_pointer = (t.pageX || t.originalEvent.touches && t.originalEvent.touches[0].pageX) - this.coords.x_gap, this.calc())
            },
            pointerUp: function(t) {
                this.current_plugin === this.plugin_count && this.is_active && (this.is_active = !1, this.$cache.cont.find(".state_hover").removeClass("state_hover"), this.force_redraw = !0, s && o("*").prop("unselectable", !1), this.updateScene(), this.restoreOriginalMinInterval(), (o.contains(this.$cache.cont[0], t.target) || this.dragging) && this.callOnFinish(), this.dragging = !1)
            },
            pointerDown: function(t, e) {
                e.preventDefault();
                var i = e.pageX || e.originalEvent.touches && e.originalEvent.touches[0].pageX;
                2 !== e.button && ("both" === t && this.setTempMinInterval(), t || (t = this.target || "from"), this.current_plugin = this.plugin_count, this.target = t, this.dragging = this.is_active = !0, this.coords.x_gap = this.$cache.rs.offset().left, this.coords.x_pointer = i - this.coords.x_gap, this.calcPointerPercent(), this.changeLevel(t), s && o("*").prop("unselectable", !0), this.$cache.line.trigger("focus"), this.updateScene())
            },
            pointerClick: function(t, e) {
                e.preventDefault();
                var i = e.pageX || e.originalEvent.touches && e.originalEvent.touches[0].pageX;
                2 !== e.button && (this.current_plugin = this.plugin_count, this.target = t, this.is_click = !0, this.coords.x_gap = this.$cache.rs.offset().left, this.coords.x_pointer = +(i - this.coords.x_gap).toFixed(), this.force_redraw = !0, this.calc(), this.$cache.line.trigger("focus"))
            },
            key: function(t, e) {
                if (!(this.current_plugin !== this.plugin_count || e.altKey || e.ctrlKey || e.shiftKey || e.metaKey)) {
                    switch (e.which) {
                        case 83:
                        case 65:
                        case 40:
                        case 37:
                            e.preventDefault(), this.moveByKey(!1);
                            break;
                        case 87:
                        case 68:
                        case 38:
                        case 39:
                            e.preventDefault(), this.moveByKey(!0)
                    }
                    return !0
                }
            },
            moveByKey: function(t) {
                var e = this.coords.p_pointer,
                    i = (this.options.max - this.options.min) / 100;
                i = this.options.step / i;
                this.coords.x_pointer = this.toFixed(this.coords.w_rs / 100 * (t ? e + i : e - i)), this.is_key = !0, this.calc()
            },
            setMinMax: function() {
                if (this.options)
                    if (this.options.hide_min_max) this.$cache.min[0].style.display = "none", this.$cache.max[0].style.display = "none";
                    else {
                        if (this.options.values.length) this.$cache.min.html(this.decorate(this.options.p_values[this.options.min])), this.$cache.max.html(this.decorate(this.options.p_values[this.options.max]));
                        else {
                            var t = this._prettify(this.options.min),
                                e = this._prettify(this.options.max);
                            this.result.min_pretty = t, this.result.max_pretty = e, this.$cache.min.html(this.decorate(t, this.options.min)), this.$cache.max.html(this.decorate(e, this.options.max))
                        }
                        this.labels.w_min = this.$cache.min.outerWidth(!1), this.labels.w_max = this.$cache.max.outerWidth(!1)
                    }
            },
            setTempMinInterval: function() {
                var t = this.result.to - this.result.from;
                null === this.old_min_interval && (this.old_min_interval = this.options.min_interval), this.options.min_interval = t
            },
            restoreOriginalMinInterval: function() {
                null !== this.old_min_interval && (this.options.min_interval = this.old_min_interval, this.old_min_interval = null)
            },
            calc: function(t) {
                if (this.options && (this.calc_count++, (10 === this.calc_count || t) && (this.calc_count = 0, this.coords.w_rs = this.$cache.rs.outerWidth(!1), this.calcHandlePercent()), this.coords.w_rs)) {
                    switch (this.calcPointerPercent(), t = this.getHandleX(), "both" === this.target && (this.coords.p_gap = 0, t = this.getHandleX()), "click" === this.target && (this.coords.p_gap = this.coords.p_handle / 2, t = this.getHandleX(), this.target = this.options.drag_interval ? "both_one" : this.chooseHandle(t)), this.target) {
                        case "base":
                            var e = (this.options.max - this.options.min) / 100;
                            t = (this.result.from - this.options.min) / e, e = (this.result.to - this.options.min) / e, this.coords.p_single_real = this.toFixed(t), this.coords.p_from_real = this.toFixed(t), this.coords.p_to_real = this.toFixed(e), this.coords.p_single_real = this.checkDiapason(this.coords.p_single_real, this.options.from_min, this.options.from_max), this.coords.p_from_real = this.checkDiapason(this.coords.p_from_real, this.options.from_min, this.options.from_max), this.coords.p_to_real = this.checkDiapason(this.coords.p_to_real, this.options.to_min, this.options.to_max), this.coords.p_single_fake = this.convertToFakePercent(this.coords.p_single_real), this.coords.p_from_fake = this.convertToFakePercent(this.coords.p_from_real), this.coords.p_to_fake = this.convertToFakePercent(this.coords.p_to_real), this.target = null;
                            break;
                        case "single":
                            if (this.options.from_fixed) break;
                            this.coords.p_single_real = this.convertToRealPercent(t), this.coords.p_single_real = this.calcWithStep(this.coords.p_single_real), this.coords.p_single_real = this.checkDiapason(this.coords.p_single_real, this.options.from_min, this.options.from_max), this.coords.p_single_fake = this.convertToFakePercent(this.coords.p_single_real);
                            break;
                        case "from":
                            if (this.options.from_fixed) break;
                            this.coords.p_from_real = this.convertToRealPercent(t), this.coords.p_from_real = this.calcWithStep(this.coords.p_from_real), this.coords.p_from_real > this.coords.p_to_real && (this.coords.p_from_real = this.coords.p_to_real), this.coords.p_from_real = this.checkDiapason(this.coords.p_from_real, this.options.from_min, this.options.from_max), this.coords.p_from_real = this.checkMinInterval(this.coords.p_from_real, this.coords.p_to_real, "from"), this.coords.p_from_real = this.checkMaxInterval(this.coords.p_from_real, this.coords.p_to_real, "from"), this.coords.p_from_fake = this.convertToFakePercent(this.coords.p_from_real);
                            break;
                        case "to":
                            if (this.options.to_fixed) break;
                            this.coords.p_to_real = this.convertToRealPercent(t), this.coords.p_to_real = this.calcWithStep(this.coords.p_to_real), this.coords.p_to_real < this.coords.p_from_real && (this.coords.p_to_real = this.coords.p_from_real), this.coords.p_to_real = this.checkDiapason(this.coords.p_to_real, this.options.to_min, this.options.to_max), this.coords.p_to_real = this.checkMinInterval(this.coords.p_to_real, this.coords.p_from_real, "to"), this.coords.p_to_real = this.checkMaxInterval(this.coords.p_to_real, this.coords.p_from_real, "to"), this.coords.p_to_fake = this.convertToFakePercent(this.coords.p_to_real);
                            break;
                        case "both":
                            if (this.options.from_fixed || this.options.to_fixed) break;
                            t = this.toFixed(t + .001 * this.coords.p_handle), this.coords.p_from_real = this.convertToRealPercent(t) - this.coords.p_gap_left, this.coords.p_from_real = this.calcWithStep(this.coords.p_from_real), this.coords.p_from_real = this.checkDiapason(this.coords.p_from_real, this.options.from_min, this.options.from_max), this.coords.p_from_real = this.checkMinInterval(this.coords.p_from_real, this.coords.p_to_real, "from"), this.coords.p_from_fake = this.convertToFakePercent(this.coords.p_from_real), this.coords.p_to_real = this.convertToRealPercent(t) + this.coords.p_gap_right, this.coords.p_to_real = this.calcWithStep(this.coords.p_to_real), this.coords.p_to_real = this.checkDiapason(this.coords.p_to_real, this.options.to_min, this.options.to_max), this.coords.p_to_real = this.checkMinInterval(this.coords.p_to_real, this.coords.p_from_real, "to"), this.coords.p_to_fake = this.convertToFakePercent(this.coords.p_to_real);
                            break;
                        case "both_one":
                            if (!this.options.from_fixed && !this.options.to_fixed) {
                                var i = this.convertToRealPercent(t),
                                    n = (t = this.result.to_percent - this.result.from_percent) / 2;
                                e = i - n, i = i + n;
                                e < 0 && (i = (e = 0) + t), 100 < i && (e = (i = 100) - t), this.coords.p_from_real = this.calcWithStep(e), this.coords.p_from_real = this.checkDiapason(this.coords.p_from_real, this.options.from_min, this.options.from_max), this.coords.p_from_fake = this.convertToFakePercent(this.coords.p_from_real), this.coords.p_to_real = this.calcWithStep(i), this.coords.p_to_real = this.checkDiapason(this.coords.p_to_real, this.options.to_min, this.options.to_max), this.coords.p_to_fake = this.convertToFakePercent(this.coords.p_to_real)
                            }
                    }
                    "single" === this.options.type ? (this.coords.p_bar_x = this.coords.p_handle / 2, this.coords.p_bar_w = this.coords.p_single_fake, this.result.from_percent = this.coords.p_single_real, this.result.from = this.convertToValue(this.coords.p_single_real), this.result.from_pretty = this._prettify(this.result.from), this.options.values.length && (this.result.from_value = this.options.values[this.result.from])) : (this.coords.p_bar_x = this.toFixed(this.coords.p_from_fake + this.coords.p_handle / 2), this.coords.p_bar_w = this.toFixed(this.coords.p_to_fake - this.coords.p_from_fake), this.result.from_percent = this.coords.p_from_real, this.result.from = this.convertToValue(this.coords.p_from_real), this.result.from_pretty = this._prettify(this.result.from), this.result.to_percent = this.coords.p_to_real, this.result.to = this.convertToValue(this.coords.p_to_real), this.result.to_pretty = this._prettify(this.result.to), this.options.values.length && (this.result.from_value = this.options.values[this.result.from], this.result.to_value = this.options.values[this.result.to])), this.calcMinMax(), this.calcLabels()
                }
            },
            calcPointerPercent: function() {
                this.coords.w_rs ? (this.coords.x_pointer < 0 || isNaN(this.coords.x_pointer) ? this.coords.x_pointer = 0 : this.coords.x_pointer > this.coords.w_rs && (this.coords.x_pointer = this.coords.w_rs), this.coords.p_pointer = this.toFixed(this.coords.x_pointer / this.coords.w_rs * 100)) : this.coords.p_pointer = 0
            },
            convertToRealPercent: function(t) {
                return t / (100 - this.coords.p_handle) * 100
            },
            convertToFakePercent: function(t) {
                return t / 100 * (100 - this.coords.p_handle)
            },
            getHandleX: function() {
                var t = 100 - this.coords.p_handle,
                    e = this.toFixed(this.coords.p_pointer - this.coords.p_gap);
                return e < 0 ? e = 0 : t < e && (e = t), e
            },
            calcHandlePercent: function() {
                this.coords.w_handle = "single" === this.options.type ? this.$cache.s_single.outerWidth(!1) : this.$cache.s_from.outerWidth(!1), this.coords.p_handle = this.toFixed(this.coords.w_handle / this.coords.w_rs * 100)
            },
            chooseHandle: function(t) {
                return "single" === this.options.type ? "single" : t >= this.coords.p_from_real + (this.coords.p_to_real - this.coords.p_from_real) / 2 ? this.options.to_fixed ? "from" : "to" : this.options.from_fixed ? "to" : "from"
            },
            calcMinMax: function() {
                this.coords.w_rs && (this.labels.p_min = this.labels.w_min / this.coords.w_rs * 100, this.labels.p_max = this.labels.w_max / this.coords.w_rs * 100)
            },
            calcLabels: function() {
                this.coords.w_rs && !this.options.hide_from_to && ("single" === this.options.type ? (this.labels.w_single = this.$cache.single.outerWidth(!1), this.labels.p_single_fake = this.labels.w_single / this.coords.w_rs * 100, this.labels.p_single_left = this.coords.p_single_fake + this.coords.p_handle / 2 - this.labels.p_single_fake / 2) : (this.labels.w_from = this.$cache.from.outerWidth(!1), this.labels.p_from_fake = this.labels.w_from / this.coords.w_rs * 100, this.labels.p_from_left = this.coords.p_from_fake + this.coords.p_handle / 2 - this.labels.p_from_fake / 2, this.labels.p_from_left = this.toFixed(this.labels.p_from_left), this.labels.p_from_left = this.checkEdges(this.labels.p_from_left, this.labels.p_from_fake), this.labels.w_to = this.$cache.to.outerWidth(!1), this.labels.p_to_fake = this.labels.w_to / this.coords.w_rs * 100, this.labels.p_to_left = this.coords.p_to_fake + this.coords.p_handle / 2 - this.labels.p_to_fake / 2, this.labels.p_to_left = this.toFixed(this.labels.p_to_left), this.labels.p_to_left = this.checkEdges(this.labels.p_to_left, this.labels.p_to_fake), this.labels.w_single = this.$cache.single.outerWidth(!1), this.labels.p_single_fake = this.labels.w_single / this.coords.w_rs * 100, this.labels.p_single_left = (this.labels.p_from_left + this.labels.p_to_left + this.labels.p_to_fake) / 2 - this.labels.p_single_fake / 2, this.labels.p_single_left = this.toFixed(this.labels.p_single_left)), this.labels.p_single_left = this.checkEdges(this.labels.p_single_left, this.labels.p_single_fake))
            },
            updateScene: function() {
                this.raf_id && (cancelAnimationFrame(this.raf_id), this.raf_id = null), clearTimeout(this.update_tm), this.update_tm = null, this.options && (this.drawHandles(), this.is_active ? this.raf_id = requestAnimationFrame(this.updateScene.bind(this)) : this.update_tm = setTimeout(this.updateScene.bind(this), 300))
            },
            drawHandles: function() {
                this.coords.w_rs = this.$cache.rs.outerWidth(!1), this.coords.w_rs && (this.coords.w_rs !== this.coords.w_rs_old && (this.target = "base", this.is_resize = !0), (this.coords.w_rs !== this.coords.w_rs_old || this.force_redraw) && (this.setMinMax(), this.calc(!0), this.drawLabels(), this.options.grid && (this.calcGridMargin(), this.calcGridLabels()), this.force_redraw = !0, this.coords.w_rs_old = this.coords.w_rs, this.drawShadow()), this.coords.w_rs && (this.dragging || this.force_redraw || this.is_key) && ((this.old_from !== this.result.from || this.old_to !== this.result.to || this.force_redraw || this.is_key) && (this.drawLabels(), this.$cache.bar[0].style.left = this.coords.p_bar_x + "%", this.$cache.bar[0].style.width = this.coords.p_bar_w + "%", "single" === this.options.type ? this.$cache.s_single[0].style.left = this.coords.p_single_fake + "%" : (this.$cache.s_from[0].style.left = this.coords.p_from_fake + "%", this.$cache.s_to[0].style.left = this.coords.p_to_fake + "%", (this.old_from !== this.result.from || this.force_redraw) && (this.$cache.from[0].style.left = this.labels.p_from_left + "%"), (this.old_to !== this.result.to || this.force_redraw) && (this.$cache.to[0].style.left = this.labels.p_to_left + "%")), this.$cache.single[0].style.left = this.labels.p_single_left + "%", this.writeToInput(), this.old_from === this.result.from && this.old_to === this.result.to || this.is_start || (this.$cache.input.trigger("change"), this.$cache.input.trigger("input")), this.old_from = this.result.from, this.old_to = this.result.to, this.is_resize || this.is_update || this.is_start || this.is_finish || this.callOnChange(), (this.is_key || this.is_click) && (this.is_click = this.is_key = !1, this.callOnFinish()), this.is_finish = this.is_resize = this.is_update = !1), this.force_redraw = this.is_click = this.is_key = this.is_start = !1))
            },
            drawLabels: function() {
                if (this.options) {
                    var t = this.options.values.length,
                        e = this.options.p_values;
                    if (!this.options.hide_from_to)
                        if ("single" === this.options.type) {
                            if (t) t = this.decorate(e[this.result.from]);
                            else {
                                var i = this._prettify(this.result.from);
                                t = this.decorate(i, this.result.from)
                            }
                            this.$cache.single.html(t), this.calcLabels(), this.$cache.min[0].style.visibility = this.labels.p_single_left < this.labels.p_min + 1 ? "hidden" : "visible", this.$cache.max[0].style.visibility = this.labels.p_single_left + this.labels.p_single_fake > 100 - this.labels.p_max - 1 ? "hidden" : "visible"
                        } else {
                            t ? (this.options.decorate_both ? (t = this.decorate(e[this.result.from]), t += this.options.values_separator, t += this.decorate(e[this.result.to])) : t = this.decorate(e[this.result.from] + this.options.values_separator + e[this.result.to]), i = this.decorate(e[this.result.from]), e = this.decorate(e[this.result.to])) : (i = this._prettify(this.result.from), e = this._prettify(this.result.to), this.options.decorate_both ? (t = this.decorate(i, this.result.from), t += this.options.values_separator, t += this.decorate(e, this.result.to)) : t = this.decorate(i + this.options.values_separator + e, this.result.to), i = this.decorate(i, this.result.from), e = this.decorate(e, this.result.to)), this.$cache.single.html(t), this.$cache.from.html(i), this.$cache.to.html(e), this.calcLabels(), t = Math.min(this.labels.p_single_left, this.labels.p_from_left), i = this.labels.p_single_left + this.labels.p_single_fake;
                            e = this.labels.p_to_left + this.labels.p_to_fake;
                            var n = Math.max(i, e);
                            this.labels.p_from_left + this.labels.p_from_fake >= this.labels.p_to_left ? (this.$cache.from[0].style.visibility = "hidden", this.$cache.to[0].style.visibility = "hidden", this.$cache.single[0].style.visibility = "visible", this.result.from === this.result.to ? ("from" === this.target ? this.$cache.from[0].style.visibility = "visible" : "to" === this.target ? this.$cache.to[0].style.visibility = "visible" : this.target || (this.$cache.from[0].style.visibility = "visible"), this.$cache.single[0].style.visibility = "hidden", n = e) : (this.$cache.from[0].style.visibility = "hidden", this.$cache.to[0].style.visibility = "hidden", this.$cache.single[0].style.visibility = "visible", n = Math.max(i, e))) : (this.$cache.from[0].style.visibility = "visible", this.$cache.to[0].style.visibility = "visible", this.$cache.single[0].style.visibility = "hidden"), this.$cache.min[0].style.visibility = t < this.labels.p_min + 1 ? "hidden" : "visible", this.$cache.max[0].style.visibility = n > 100 - this.labels.p_max - 1 ? "hidden" : "visible"
                        }
                }
            },
            drawShadow: function() {
                var t = this.options,
                    e = this.$cache,
                    i = "number" == typeof t.from_min && !isNaN(t.from_min),
                    n = "number" == typeof t.from_max && !isNaN(t.from_max),
                    s = "number" == typeof t.to_min && !isNaN(t.to_min),
                    o = "number" == typeof t.to_max && !isNaN(t.to_max);
                "single" === t.type ? t.from_shadow && (i || n) ? (i = this.convertToPercent(i ? t.from_min : t.min), n = this.convertToPercent(n ? t.from_max : t.max) - i, i = this.toFixed(i - this.coords.p_handle / 100 * i), n = this.toFixed(n - this.coords.p_handle / 100 * n), i += this.coords.p_handle / 2, e.shad_single[0].style.display = "block", e.shad_single[0].style.left = i + "%", e.shad_single[0].style.width = n + "%") : e.shad_single[0].style.display = "none" : (t.from_shadow && (i || n) ? (i = this.convertToPercent(i ? t.from_min : t.min), n = this.convertToPercent(n ? t.from_max : t.max) - i, i = this.toFixed(i - this.coords.p_handle / 100 * i), n = this.toFixed(n - this.coords.p_handle / 100 * n), i += this.coords.p_handle / 2, e.shad_from[0].style.display = "block", e.shad_from[0].style.left = i + "%", e.shad_from[0].style.width = n + "%") : e.shad_from[0].style.display = "none", t.to_shadow && (s || o) ? (s = this.convertToPercent(s ? t.to_min : t.min), t = this.convertToPercent(o ? t.to_max : t.max) - s, s = this.toFixed(s - this.coords.p_handle / 100 * s), t = this.toFixed(t - this.coords.p_handle / 100 * t), s += this.coords.p_handle / 2, e.shad_to[0].style.display = "block", e.shad_to[0].style.left = s + "%", e.shad_to[0].style.width = t + "%") : e.shad_to[0].style.display = "none")
            },
            writeToInput: function() {
                "single" === this.options.type ? (this.options.values.length ? this.$cache.input.prop("value", this.result.from_value) : this.$cache.input.prop("value", this.result.from), this.$cache.input.data("from", this.result.from)) : (this.options.values.length ? this.$cache.input.prop("value", this.result.from_value + this.options.input_values_separator + this.result.to_value) : this.$cache.input.prop("value", this.result.from + this.options.input_values_separator + this.result.to), this.$cache.input.data("from", this.result.from), this.$cache.input.data("to", this.result.to))
            },
            callOnStart: function() {
                this.writeToInput(), this.options.onStart && "function" == typeof this.options.onStart && (this.options.scope ? this.options.onStart.call(this.options.scope, this.result) : this.options.onStart(this.result))
            },
            callOnChange: function() {
                this.writeToInput(), this.options.onChange && "function" == typeof this.options.onChange && (this.options.scope ? this.options.onChange.call(this.options.scope, this.result) : this.options.onChange(this.result))
            },
            callOnFinish: function() {
                this.writeToInput(), this.options.onFinish && "function" == typeof this.options.onFinish && (this.options.scope ? this.options.onFinish.call(this.options.scope, this.result) : this.options.onFinish(this.result))
            },
            callOnUpdate: function() {
                this.writeToInput(), this.options.onUpdate && "function" == typeof this.options.onUpdate && (this.options.scope ? this.options.onUpdate.call(this.options.scope, this.result) : this.options.onUpdate(this.result))
            },
            toggleInput: function() {
                this.$cache.input.toggleClass("irs-hidden-input"), this.has_tab_index ? this.$cache.input.prop("tabindex", -1) : this.$cache.input.removeProp("tabindex"), this.has_tab_index = !this.has_tab_index
            },
            convertToPercent: function(t, e) {
                var i = this.options.max - this.options.min;
                return i ? this.toFixed((e ? t : t - this.options.min) / (i / 100)) : (this.no_diapason = !0, 0)
            },
            convertToValue: function(t) {
                var e, i, n = this.options.min,
                    s = this.options.max,
                    o = n.toString().split(".")[1],
                    r = s.toString().split(".")[1],
                    a = 0,
                    l = 0;
                return 0 === t ? this.options.min : 100 === t ? this.options.max : (o && (a = e = o.length), r && (a = i = r.length), e && i && (a = i <= e ? e : i), n < 0 && (n = +(n + (l = Math.abs(n))).toFixed(a), s = +(s + l).toFixed(a)), t = (s - n) / 100 * t + n, (n = this.options.step.toString().split(".")[1]) ? t = +t.toFixed(n.length) : (t /= this.options.step, t = +(t *= this.options.step).toFixed(0)), l && (t -= l), (l = n ? +t.toFixed(n.length) : this.toFixed(t)) < this.options.min ? l = this.options.min : l > this.options.max && (l = this.options.max), l)
            },
            calcWithStep: function(t) {
                var e = Math.round(t / this.coords.p_step) * this.coords.p_step;
                return 100 < e && (e = 100), 100 === t && (e = 100), this.toFixed(e)
            },
            checkMinInterval: function(t, e, i) {
                var n = this.options;
                return n.min_interval ? (t = this.convertToValue(t), e = this.convertToValue(e), "from" === i ? e - t < n.min_interval && (t = e - n.min_interval) : t - e < n.min_interval && (t = e + n.min_interval), this.convertToPercent(t)) : t
            },
            checkMaxInterval: function(t, e, i) {
                var n = this.options;
                return n.max_interval ? (t = this.convertToValue(t), e = this.convertToValue(e), "from" === i ? e - t > n.max_interval && (t = e - n.max_interval) : t - e > n.max_interval && (t = e + n.max_interval), this.convertToPercent(t)) : t
            },
            checkDiapason: function(t, e, i) {
                t = this.convertToValue(t);
                var n = this.options;
                return "number" != typeof e && (e = n.min), "number" != typeof i && (i = n.max), t < e && (t = e), i < t && (t = i), this.convertToPercent(t)
            },
            toFixed: function(t) {
                return +(t = t.toFixed(20))
            },
            _prettify: function(t) {
                return this.options.prettify_enabled ? this.options.prettify && "function" == typeof this.options.prettify ? this.options.prettify(t) : this.prettify(t) : t
            },
            prettify: function(t) {
                return t.toString().replace(/(\d{1,3}(?=(?:\d\d\d)+(?!\d)))/g, "$1" + this.options.prettify_separator)
            },
            checkEdges: function(t, e) {
                return this.options.force_edges && (t < 0 ? t = 0 : 100 - e < t && (t = 100 - e)), this.toFixed(t)
            },
            validate: function() {
                var t, e = this.options,
                    i = this.result,
                    n = e.values,
                    s = n.length;
                if ("string" == typeof e.min && (e.min = +e.min), "string" == typeof e.max && (e.max = +e.max), "string" == typeof e.from && (e.from = +e.from), "string" == typeof e.to && (e.to = +e.to), "string" == typeof e.step && (e.step = +e.step), "string" == typeof e.from_min && (e.from_min = +e.from_min), "string" == typeof e.from_max && (e.from_max = +e.from_max), "string" == typeof e.to_min && (e.to_min = +e.to_min), "string" == typeof e.to_max && (e.to_max = +e.to_max), "string" == typeof e.grid_num && (e.grid_num = +e.grid_num), e.max < e.min && (e.max = e.min), s)
                    for (e.p_values = [], e.min = 0, e.max = s - 1, e.step = 1, e.grid_num = e.max, e.grid_snap = !0, t = 0; t < s; t++) {
                        var o = +n[t];
                        isNaN(o) ? o = n[t] : (n[t] = o, o = this._prettify(o)), e.p_values.push(o)
                    }("number" != typeof e.from || isNaN(e.from)) && (e.from = e.min), ("number" != typeof e.to || isNaN(e.to)) && (e.to = e.max), "single" === e.type ? (e.from < e.min && (e.from = e.min), e.from > e.max && (e.from = e.max)) : (e.from < e.min && (e.from = e.min), e.from > e.max && (e.from = e.max), e.to < e.min && (e.to = e.min), e.to > e.max && (e.to = e.max), this.update_check.from && (this.update_check.from !== e.from && e.from > e.to && (e.from = e.to), this.update_check.to !== e.to && e.to < e.from && (e.to = e.from)), e.from > e.to && (e.from = e.to), e.to < e.from && (e.to = e.from)), ("number" != typeof e.step || isNaN(e.step) || !e.step || e.step < 0) && (e.step = 1), "number" == typeof e.from_min && e.from < e.from_min && (e.from = e.from_min), "number" == typeof e.from_max && e.from > e.from_max && (e.from = e.from_max), "number" == typeof e.to_min && e.to < e.to_min && (e.to = e.to_min), "number" == typeof e.to_max && e.from > e.to_max && (e.to = e.to_max), i && (i.min !== e.min && (i.min = e.min), i.max !== e.max && (i.max = e.max), (i.from < i.min || i.from > i.max) && (i.from = e.from), (i.to < i.min || i.to > i.max) && (i.to = e.to)), ("number" != typeof e.min_interval || isNaN(e.min_interval) || !e.min_interval || e.min_interval < 0) && (e.min_interval = 0), ("number" != typeof e.max_interval || isNaN(e.max_interval) || !e.max_interval || e.max_interval < 0) && (e.max_interval = 0), e.min_interval && e.min_interval > e.max - e.min && (e.min_interval = e.max - e.min), e.max_interval && e.max_interval > e.max - e.min && (e.max_interval = e.max - e.min)
            },
            decorate: function(t, e) {
                var i = "",
                    n = this.options;
                return n.prefix && (i += n.prefix), i += t, n.max_postfix && (n.values.length && t === n.p_values[n.max] ? (i += n.max_postfix, n.postfix && (i += " ")) : e === n.max && (i += n.max_postfix, n.postfix && (i += " "))), n.postfix && (i += n.postfix), i
            },
            updateFrom: function() {
                this.result.from = this.options.from, this.result.from_percent = this.convertToPercent(this.result.from), this.result.from_pretty = this._prettify(this.result.from), this.options.values && (this.result.from_value = this.options.values[this.result.from])
            },
            updateTo: function() {
                this.result.to = this.options.to, this.result.to_percent = this.convertToPercent(this.result.to), this.result.to_pretty = this._prettify(this.result.to), this.options.values && (this.result.to_value = this.options.values[this.result.to])
            },
            updateResult: function() {
                this.result.min = this.options.min, this.result.max = this.options.max, this.updateFrom(), this.updateTo()
            },
            appendGrid: function() {
                if (this.options.grid) {
                    var t, e = this.options,
                        i = e.max - e.min,
                        n = e.grid_num,
                        s = 4,
                        o = "";
                    if (this.calcGridMargin(), e.grid_snap)
                        if (50 < i) {
                            n = 50 / e.step;
                            var r = this.toFixed(e.step / .5)
                        } else n = i / e.step, r = this.toFixed(e.step / (i / 100));
                    else r = this.toFixed(100 / n);
                    for (4 < n && (s = 3), 7 < n && (s = 2), 14 < n && (s = 1), 28 < n && (s = 0), i = 0; i < n + 1; i++) {
                        var a = s,
                            l = this.toFixed(r * i);
                        100 < l && (l = 100);
                        var c = ((this.coords.big[i] = l) - r * (i - 1)) / (a + 1);
                        for (t = 1; t <= a && 0 !== l; t++) {
                            o += '<span class="irs-grid-pol small" style="left: ' + this.toFixed(l - c * t) + '%"></span>'
                        }
                        o += '<span class="irs-grid-pol" style="left: ' + l + '%"></span>', t = this.convertToValue(l), o += '<span class="irs-grid-text js-grid-text-' + i + '" style="left: ' + l + '%">' + (t = e.values.length ? e.p_values[t] : this._prettify(t)) + "</span>"
                    }
                    this.coords.big_num = Math.ceil(n + 1), this.$cache.cont.addClass("irs-with-grid"), this.$cache.grid.html(o), this.cacheGridLabels()
                }
            },
            cacheGridLabels: function() {
                var t, e = this.coords.big_num;
                for (t = 0; t < e; t++) {
                    var i = this.$cache.grid.find(".js-grid-text-" + t);
                    this.$cache.grid_labels.push(i)
                }
                this.calcGridLabels()
            },
            calcGridLabels: function() {
                var t, e = [],
                    i = [],
                    n = this.coords.big_num;
                for (t = 0; t < n; t++) this.coords.big_w[t] = this.$cache.grid_labels[t].outerWidth(!1), this.coords.big_p[t] = this.toFixed(this.coords.big_w[t] / this.coords.w_rs * 100), this.coords.big_x[t] = this.toFixed(this.coords.big_p[t] / 2), e[t] = this.toFixed(this.coords.big[t] - this.coords.big_x[t]), i[t] = this.toFixed(e[t] + this.coords.big_p[t]);
                for (this.options.force_edges && (e[0] < -this.coords.grid_gap && (e[0] = -this.coords.grid_gap, i[0] = this.toFixed(e[0] + this.coords.big_p[0]), this.coords.big_x[0] = this.coords.grid_gap), i[n - 1] > 100 + this.coords.grid_gap && (i[n - 1] = 100 + this.coords.grid_gap, e[n - 1] = this.toFixed(i[n - 1] - this.coords.big_p[n - 1]), this.coords.big_x[n - 1] = this.toFixed(this.coords.big_p[n - 1] - this.coords.grid_gap))), this.calcGridCollision(2, e, i), this.calcGridCollision(4, e, i), t = 0; t < n; t++) e = this.$cache.grid_labels[t][0], this.coords.big_x[t] !== Number.POSITIVE_INFINITY && (e.style.marginLeft = -this.coords.big_x[t] + "%")
            },
            calcGridCollision: function(t, e, i) {
                var n, s = this.coords.big_num;
                for (n = 0; n < s; n += t) {
                    var o = n + t / 2;
                    if (s <= o) break;
                    this.$cache.grid_labels[o][0].style.visibility = i[n] <= e[o] ? "visible" : "hidden"
                }
            },
            calcGridMargin: function() {
                this.options.grid_margin && (this.coords.w_rs = this.$cache.rs.outerWidth(!1), this.coords.w_rs && (this.coords.w_handle = "single" === this.options.type ? this.$cache.s_single.outerWidth(!1) : this.$cache.s_from.outerWidth(!1), this.coords.p_handle = this.toFixed(this.coords.w_handle / this.coords.w_rs * 100), this.coords.grid_gap = this.toFixed(this.coords.p_handle / 2 - .1), this.$cache.grid[0].style.width = this.toFixed(100 - this.coords.p_handle) + "%", this.$cache.grid[0].style.left = this.coords.grid_gap + "%"))
            },
            update: function(t) {
                this.input && (this.is_update = !0, this.options.from = this.result.from, this.options.to = this.result.to, this.update_check.from = this.result.from, this.update_check.to = this.result.to, this.options = o.extend(this.options, t), this.validate(), this.updateResult(t), this.toggleInput(), this.remove(), this.init(!0))
            },
            reset: function() {
                this.input && (this.updateResult(), this.update())
            },
            destroy: function() {
                this.input && (this.toggleInput(), this.$cache.input.prop("readonly", !1), o.data(this.input, "ionRangeSlider", null), this.remove(), this.options = this.input = null)
            }
        }, o.fn.ionRangeSlider = function(t) {
            return this.each(function() {
                o.data(this, "ionRangeSlider") || o.data(this, "ionRangeSlider", new c(this, t, n++))
            })
        },
        function() {
            for (var o = 0, t = ["ms", "moz", "webkit", "o"], e = 0; e < t.length && !a.requestAnimationFrame; ++e) a.requestAnimationFrame = a[t[e] + "RequestAnimationFrame"], a.cancelAnimationFrame = a[t[e] + "CancelAnimationFrame"] || a[t[e] + "CancelRequestAnimationFrame"];
            a.requestAnimationFrame || (a.requestAnimationFrame = function(t, e) {
                var i = (new Date).getTime(),
                    n = Math.max(0, 16 - (i - o)),
                    s = a.setTimeout(function() {
                        t(i + n)
                    }, n);
                return o = i + n, s
            }), a.cancelAnimationFrame || (a.cancelAnimationFrame = function(t) {
                clearTimeout(t)
            })
        }()
}), $(".cd-nav__trigger").on("click", function() {
    $(this).toggleClass("is-clicked"), $(".js-header").hasClass("is-visible") ? $(".js-header").removeClass("is-visible").one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend", function() {
        $("body").removeClass("overflow-hidden"), $(".js-header").scrollTop(0)
    }) : $(".js-header").addClass("is-visible").one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend", function() {
        $("body").addClass("overflow-hidden")
    })
}), $(document).ready(function() {
    $(".js-navigation-desktop a + ul").prev().addClass("is-parent"), mobile_menu(), clone_menu()
}), $(window).resize(function() {
    mobile_menu(), clone_menu(), 1023 < $(window).outerWidth() && $(".js-header").hasClass("is-visible") && ($(".js-header").removeClass("is-visible").one("webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend", function() {
        $("body").removeClass("overflow-hidden")
    }), $(".cd-nav__trigger").removeClass("is-clicked"))
}), svg4everybody(), $(window).scroll(function() {
    fixed_header()
}), $(document).ready(function() {
    function e(t) {
        t.addClass("is-active").siblings().removeClass("is-active").closest(".js-hf").find(".js-hf__tabs-content").removeClass("is-active").eq(t.index()).addClass("is-active")
    }
    $(".js-home-promo").owlCarousel({
            margin: 0,
            nav: !0,
            dots: !0,
            items: 1,
            lazyLoad: !0,
            navText: [, ]
        }), ("ontouchstart" in window || 0 < navigator.msMaxTouchPoints) && $("body").removeClass("no-touch").addClass("touch"), $(document).on("click", ".js-accordion .is-parent", function(t) {
            t.preventDefault(), $(this).parent().hasClass("is-active") ? $(".js-accordion li").removeClass("is-active") : ($(".js-accordion li").removeClass("is-active"), $(this).parent().addClass("is-active"))
        }), $(".js-hf__tab").on("click", function() {
            var t = $(this);
            $(".js-hf").hasClass("is-open") ? $(this).hasClass("is-active") ? ($(".js-hf").removeClass("is-open"), $(this).removeClass("is-active")) : e(t) : ($(".js-hf").addClass("is-open"), e(t))
        }), $(".js-hf__close").on("click", function() {
            $(".js-hf").removeClass("is-open"), $(".js-hf__tab").removeClass("is-active")
        }), $(".js-label-fly input, .js-label-fly textarea").each(function() {
            "" !== $.trim($(this).val()) && $(this).siblings("label").addClass("is-active")
        }), $(document).on("change", ".js-label-fly input, .js-label-fly textarea", function() {
            "" !== $.trim($(this).val()) ? $(this).siblings("label").addClass("is-active") : $(this).siblings("label").removeClass("is-active")
        }), $(".is-first-focus").focus(), $(document).on("focus", ".js-label-fly input , .js-label-fly textarea", function() {
            $(".js-label-fly input , .js-label-fly textarea").removeClass("is-first-focus")
        }), jQuery.fn.prodGallery = function() {
            return this.each(function() {
                var t = $(this),
                    i = t.find(".product-gallery__images"),
                    s = t.find(".product-gallery__thumbs"),
                    o = s.find(".product-gallery__thumb");
                return i.owlCarousel({
                    margin: 0,
                    nav: !0,
                    dots: !0,
                    items: 1,
                    lazyLoad: !0,
                    navText: [, ]
                }), 4 < o.length && s.owlCarousel({
                    margin: 20,
                    nav: !0,
                    navText: [, ],
                    dots: !1,
                    items: 6,
                    lazyLoad: !0,
                    responsive: {
                        0: {
                            margin: 6
                        },
                        768: {
                            margin: 20
                        }
                    }
                }), o.on("click", function(t) {
                    var e;
                    e = $(this).parent().hasClass("owl-item") ? $(this).parent().index() : $(this).index(), i.trigger("to.owl.carousel", e), o.removeClass("is-active"), $(this).addClass("is-active")
                }), i.on("changed.owl.carousel", function(t) {
                    if (o.removeClass("is-active"), o.eq(t.item.index).addClass("is-active"), s.hasClass("owl-carousel")) {
                        var e, i, n = [];
                        s.find(".active > .product-gallery__thumb").each(function() {
                            n.push($(this).parent().index())
                        }), e = n[0], i = n[5], t.item.index > i && o.trigger("next.owl.carousel"), t.item.index < e && o.trigger("prev.owl.carousel")
                    }
                }), $(this)
            })
        }, $(".product-promo .product-gallery").prodGallery(), $(window).scroll(function() {
            currentScrollTop = $(window).scrollTop(), windowHeight = $(window).height(), currentScrollTop > 1.5 * windowHeight ? $(".js-btn-on-top").addClass("is-visible") : $(".js-btn-on-top").removeClass("is-visible")
        }), $(".js-btn-on-top").on("click", function() {
            $("html:not(:animated),body:not(:animated)").animate({
                scrollTop: 0
            }, 800)
        }), $(".expand-btn").on("click", function(t) {
            t.preventDefault(), $(this).next(".expand-box").addClass("is-open"), $(this).hide()
        }), $(".no-touch .brazzers__thumbs").each(function() {
            var t = $(this);
            t.siblings(".brazzers__images").find("img").each(function() {
                t.append("<i>")
            })
        }), $(".no-touch .brazzers__thumbs i").hover(function() {
            var t = $(this).parent(".brazzers__thumbs").siblings(".brazzers__images").find("img"),
                e = $(this).parent().find("i");
            $(this).parents(".brazzers").css("opacity", 1), t.css("opacity", 0).eq($(this).index()).css("opacity", 1), e.removeClass("is-active"), $(this).addClass("is-active")
        }).parents(".brazzers").mouseleave(function() {
            $(this).css("opacity", 0)
        }),
        function(w) {
            "use strict";
            w.fn.select = function(t) {
                var g = "is-active",
                    v = w.extend({
                        animations: "",
                        maxWidth: 0,
                        onChange: function() {}
                    }, t),
                    _ = 13,
                    y = 40,
                    b = 27,
                    x = 38;
                return this.each(function() {
                    var e = w(this),
                        i = e.find("option"),
                        n = [];
                    i.each(function() {
                        var t = w(this),
                            e = !!t.prop("selected");
                        n.push('<li class="select-js__item" data-selected="' + e + '" data-get="' + t.val() + '">' + t.text() + "</li>")
                    });
                    var t = '<div class="select-js__box" data-name="' + e.attr("name") + '"><div class="select-js__name"></div><ul class="select-js__list">{list}</ul></div>';
                    e.after(t.replace("{list}", n.join(""))).attr("hidden", "hidden");
                    var s = e.parent(),
                        o = e.next(".select-js__box"),
                        r = o.find(".select-js__name"),
                        a = o.find(".select-js__item"),
                        l = o.find(".select-js__list"),
                        c = l.outerHeight(),
                        h = a.length,
                        u = !1;

                    function d(t) {
                        l.find("." + g).removeClass(g), a.eq(t).addClass(g)
                    }

                    function p(t) {
                        var e = a.eq(t);
                        r.text(e.text())
                    }

                    function f() {
                        var t = l.find("." + g);
                        v.onChange(t.data("get")), i.attr("selected", !1).eq(t.index()).attr("selected", !0), s.addClass("is-selected"), m()
                    }

                    function m() {
                        s.removeClass("is-open"), r.removeClass("is-open"), l.removeClass("is-open"), u = !1
                    }
                    a.each(function() {
                        var t = w(this);
                        !0 === t.data("selected") && (r.text(t.text()), t.addClass(g))
                    }), r.on("click", function() {
                        if (!w(this).hasClass("is-open")) {
                            var t = e.parents(".form");
                            t.find(".js-select-wrap").removeClass("is-open").addClass("test"), t.find(".select-js__name").removeClass("is-open"), t.find(".select-js__list").removeClass("is-open")
                        }
                    }), r.on("click", function() {
                        s.toggleClass("is-open"), r.toggleClass("is-open"), l.toggleClass("is-open"), u = !u
                    }), a.on("click", function() {
                        var t = w(this).index();
                        d(t), p(t), f()
                    }), w(document).on("click", function(t) {
                        w(t.target).hasClass("select-js__name") || u && m()
                    }).on("keydown", function(t) {
                        u && (t.which !== b && t.which !== _ || f(), t.which !== x && t.which !== y || (t.preventDefault(), function(t) {
                            var e = l.find("." + g).index();
                            if (!(0 <= e)) return;
                            t === x && (e -= 1);
                            t === y && (e += 1);
                            if (e < 0 || h <= e) return;
                            d(e), p(e),
                                function(t) {
                                    var e = l[0].scrollHeight,
                                        i = l.scrollTop();
                                    if (c < e) {
                                        var n = a.eq(t).offset().top,
                                            s = l.offset().top;
                                        l.scrollTop(n - (s - i))
                                    }
                                }(e)
                        }(t.which)))
                    })
                })
            }
        }(jQuery), /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ? ($(".js-select-wrap").addClass("is-mobile"), $(".js-select").on("change", function() {
            $(this).parent().addClass("is-selected")
        })) : ($(".js-select-wrap").addClass("is-desktop"), $(".js-select").select())
}), $(function(s) {
    "use strict";
    if (-1 !== location.hash.indexOf("#order_id=")) {
        var t = location.hash.split("=");
        "#order_id" === t[0] && getModelInfo(t[1])
    }
    var e = s("body").attr("data-route");
    switch (enterFormSubmit(), validatePhone(), e) {
        case "layout_home":
            lazyLoadOnSlider(), homeFilterInit(), s('#home-filter input[type="checkbox"]').on("change", function() {
                homeFilter()
            }), updateTradeIn();
            break;
        case "layout_type":
            lazyLoadOnList(), listFilterInit(), s("#list-filter").find('input[type="checkbox"], input[type="radio"], select').on("change", function() {
                listFilter()
            }), s(document).on("click", "#list-filter .select-js__item", function() {
                listFilter()
            }), updateTradeIn(), lazyLoadBrazzers()
    }
    s(document).keydown(function(t) {
        37 === t.which ? s(".owl-prev").click() : 39 === t.which && s(".owl-next").click()
    }), s(document).on("click", ".form__input-text", function() {
        s(this).parent().find(".error").remove()
    }), s(document).on("click", ".js-open-modal", function(t) {
        t.preventDefault(), s.magnificPopup.close();
        var e = s("#feedback_modal"),
            i = s("#success_modal"),
            n = s(this).attr("data-text");
        e.find('[name="name"]').val("").next().removeClass("is-active"), e.find('[name="phone"]').val("").next().removeClass("is-active"), e.find('[name="order_id"]').val(""), e.find(".error").remove(), e.find('[name="code"]').val(s(this).attr("data-code")), s(this).is("[data-order]") && e.find('[name="order_id"]').val(s(this).attr("data-order")), s(this).is("[data-info]") && e.find('[name="page"]').val(s(this).attr("data-info")), s(this).is("[data-back]") && i.attr("data-back", s(this).attr("data-back")), s.magnificPopup.open({
            items: {
                src: "#feedback_modal"
            },
            type: "inline",
            fixedContentPos: !0,
            callbacks: {
                open: function() {
                    s("#popup-title-desktop").html(n), s("#popup-title-mobile").html(n)
                },
                afterClose: function() {
                    e.find('[name="page"]').val(e.find('[name="page"]').attr("data-page")), i.attr("data-back") && "0" !== i.attr("data-close") && (getModelInfo(i.attr("data-back")), i.attr("data-back", ""))
                }
            },
            tClose: "Закрыть",
            tLoading: "Загрузка…"
        })
    }), s(document).on("click", ".js_coockie_close", function() {
        s.ajax({
            url: "index.php?route=common/footer/politic",
            type: "post",
            data: "",
            dataType: "html"
        }), s(".footer__cookie").remove()
    }), s(document).on("click", ".js-modal-close", function() {
        s.magnificPopup.close()
    })

}(jQuery));
