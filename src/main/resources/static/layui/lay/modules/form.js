/** layui-v2.5.6 MIT License By https://www.layui.com */
;layui.define("layer", function (e) {
    "use strict";
    let t = layui.$;
    let i = layui.layer;
    let a = layui.hint();
    let n = layui.device();
    let l = "form";
    let r = ".layui-form";
    let s = "layui-this";
    let o = "layui-hide";
    let c = "layui-disabled";
    let u = function () {
        this.config = {
            verify: {
                required: [/[\S]+/, "必填项不能为空"],
                phone: [/(^$)|(^1\d{10}$)|(^\d{3,4}\-\d{7,8}$)/, "请输入正确的手机号"],
                email: [/(^$)|^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/, "邮箱格式不正确"],
                url: [/(^$)|(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/, "链接格式不正确"],
                number: [/(^$)|\d*$/, '只能填写数字'],
                double: [/(^$)|(\d*\.\d*$)|\d*$/,'只能填写整数或小数'],
                date: [/(^$)|^(\d{4})[-\/](\d{1}|0\d{1}|1[0-2])([-\/](\d{1}|0\d{1}|[1-2][0-9]|3[0-1]))*$/, "日期格式不正确"],
                identity: [/(^$)|(^\d{15}$)|(^\d{17}(x|X|\d)$)/, "请输入正确的身份证号"]
            }
        }
    };
    u.prototype.set = function (e) {
        let i = this;
        return t.extend(!0, i.config, e), i
    }, u.prototype.verify = function (e) {
        let i = this;
        return t.extend(!0, i.config.verify, e), i
    }, u.prototype.on = function (e, t) {
        return layui.onevent.call(this, l, e, t)
    }, u.prototype.val = function (e, i) {
        let a = this, n = t(r + '[lay-filter="' + e + '"]');
        return n.each(function () {
            let n = t(this);
            layui.each(i, function (e, t) {
                let i, a = n.find('[name="' + e + '"]');
                a[0] && (i = a[0].type, "checkbox" === i ? a[0].checked = t : "radio" === i ? a.each(function () {
                    this.value == t && (this.checked = !0)
                }) : a.val(t))
            })
        }), f.render(null, e), a.getValue(e)
    }, u.prototype.getValue = function (e, i) {
        i = i || t(r + '[lay-filter="' + e + '"]').eq(0);
        let a = {}, n = {}, l = i.find("input,select,textarea");
        return layui.each(l, function (e, t) {
            if (t.name = (t.name || "").replace(/^\s*|\s*&/, ""), t.name) {
                if (/^.*\[\]$/.test(t.name)) {
                    let i = t.name.match(/^(.*)\[\]$/g)[0];
                    a[i] = 0 | a[i], t.name = t.name.replace(/^(.*)\[\]$/, "$1[" + a[i]++ + "]")
                }
                /^checkbox|radio$/.test(t.type) && !t.checked || (n[t.name] = t.value)
            }
        }), n
    }, u.prototype.render = function (e, i) {
        let n = this, u = t(r + function () {
            return i ? '[lay-filter="' + i + '"]' : ""
        }()), d = {
            select: function () {
                let e, i = "请选择", a = "layui-form-select", n = "layui-select-title", r = "layui-select-none", d = "",
                    f = u.find("select"), v = function (i, l) {
                        t(i.target).parent().hasClass(n) && !l || (t("." + a).removeClass(a + "ed " + a + "up"), e && d && e.val(d)), e = null
                    }, y = function (i, u, f) {
                        let y, p = t(this), m = i.find("." + n), k = m.find("input"), g = i.find("dl"),
                            x = g.children("dd"), b = this.selectedIndex;
                        if (!u) {
                            let C = function () {
                                let e = i.offset().top + i.outerHeight() + 5 - h.scrollTop(), t = g.outerHeight();
                                b = p[0].selectedIndex, i.addClass(a + "ed"), x.removeClass(o), y = null, x.eq(b).addClass(s).siblings().removeClass(s), e + t > h.height() && e >= t && i.addClass(a + "up"), T()
                            }, w = function (e) {
                                i.removeClass(a + "ed " + a + "up"), k.blur(), y = null, e || $(k.val(), function (e) {
                                    let i = p[0].selectedIndex;
                                    e && (d = t(p[0].options[i]).html(), 0 === i && d === k.attr("placeholder") && (d = ""), k.val(d || ""))
                                })
                            }, T = function () {
                                let e = g.children("dd." + s);
                                if (e[0]) {
                                    let t = e.position().top, i = g.height(), a = e.height();
                                    t > i && g.scrollTop(t + g.scrollTop() - i + a - 5), t < 0 && g.scrollTop(t + g.scrollTop() - 5)
                                }
                            };
                            m.on("click", function (e) {
                                i.hasClass(a + "ed") ? w() : (v(e, !0), C()), g.find("." + r).remove()
                            }), m.find(".layui-edge").on("click", function () {
                                k.focus()
                            }), k.on("keyup", function (e) {
                                let t = e.keyCode;
                                9 === t && C()
                            }).on("keydown", function (e) {
                                let t = e.keyCode;
                                9 === t && w();
                                let i = function (t, a) {
                                    let n, l;
                                    e.preventDefault();
                                    let r = function () {
                                        let e = g.children("dd." + s);
                                        if (g.children("dd." + o)[0] && "next" === t) {
                                            let i = g.children("dd:not(." + o + ",." + c + ")"), n = i.eq(0).index();
                                            if (n >= 0 && n < e.index() && !i.hasClass(s)) return i.eq(0).prev()[0] ? i.eq(0).prev() : g.children(":last")
                                        }
                                        return a && a[0] ? a : y && y[0] ? y : e
                                    }();
                                    return l = r[t](), n = r[t]("dd:not(." + o + ")"), l[0] ? (y = r[t](), n[0] && !n.hasClass(c) || !y[0] ? (n.addClass(s).siblings().removeClass(s), void T()) : i(t, y)) : y = null
                                };
                                38 === t && i("prev"), 40 === t && i("next"), 13 === t && (e.preventDefault(), g.children("dd." + s).trigger("click"))
                            });
                            let $ = function (e, i, a) {
                                let n = 0;
                                layui.each(x, function () {
                                    let i = t(this), l = i.text(), r = l.indexOf(e) === -1;
                                    ("" === e || "blur" === a ? e !== l : r) && n++, "keyup" === a && i[r ? "addClass" : "removeClass"](o)
                                });
                                let l = n === x.length;
                                return i(l), l
                            }, q = function (e) {
                                let t = this.value, i = e.keyCode;
                                return 9 !== i && 13 !== i && 37 !== i && 38 !== i && 39 !== i && 40 !== i && ($(t, function (e) {
                                    e ? g.find("." + r)[0] || g.append('<p class="' + r + '">无匹配项</p>') : g.find("." + r).remove()
                                }, "keyup"), "" === t && g.find("." + r).remove(), void T())
                            };
                            f && k.on("keyup", q).on("blur", function () {
                                let a = p[0].selectedIndex;
                                e = k, d = t(p[0].options[a]).html(), 0 === a && d === k.attr("placeholder") && (d = ""), setTimeout(function () {
                                    $(k.val(), function () {
                                        d || k.val("")
                                    }, "blur")
                                }, 200)
                            }), x.on("click", function () {
                                let e = t(this), a = e.attr("lay-value"), n = p.attr("lay-filter");
                                return !e.hasClass(c) && (e.hasClass("layui-select-tips") ? k.val("") : (k.val(e.text()), e.addClass(s)), e.siblings().removeClass(s), p.val(a).removeClass("layui-form-danger"), layui.event.call(this, l, "select(" + n + ")", {
                                    elem: p[0],
                                    value: a,
                                    othis: i
                                }), w(!0), !1)
                            }), i.find("dl>dt").on("click", function () {
                                return !1
                            }), t(document).off("click", v).on("click", v)
                        }
                    };
                f.each(function (e, l) {
                    let r = t(this), o = r.next("." + a), u = this.disabled, d = l.value,
                        f = t(l.options[l.selectedIndex]), v = l.options[0];
                    if ("string" == typeof r.attr("lay-ignore")) return r.show();
                    let h = "string" == typeof r.attr("lay-search"), p = v ? v.value ? i : v.innerHTML || i : i,
                        m = t(['<div class="' + (h ? "" : "layui-unselect ") + a, (u ? " layui-select-disabled" : "") + '">', '<div class="' + n + '">', '<input type="text" placeholder="' + p + '" ' + ('value="' + (d ? f.html() : "") + '"') + (!u && h ? "" : " readonly") + ' class="layui-input' + (h ? "" : " layui-unselect") + (u ? " " + c : "") + '">', '<i class="layui-edge"></i></div>', '<dl class="layui-anim layui-anim-upbit' + (r.find("optgroup")[0] ? " layui-select-group" : "") + '">', function (e) {
                            let t = [];
                            return layui.each(e, function (e, a) {
                                0 !== e || a.value ? "optgroup" === a.tagName.toLowerCase() ? t.push("<dt>" + a.label + "</dt>") : t.push('<dd lay-value="' + a.value + '" class="' + (d === a.value ? s : "") + (a.disabled ? " " + c : "") + '">' + a.innerHTML + "</dd>") : t.push('<dd lay-value="" class="layui-select-tips">' + (a.innerHTML || i) + "</dd>")
                            }), 0 === t.length && t.push('<dd lay-value="" class="' + c + '">没有选项</dd>'), t.join("")
                        }(r.find("*")) + "</dl>", "</div>"].join(""));
                    o[0] && o.remove(), r.after(m), y.call(this, m, u, h)
                })
            }, checkbox: function () {
                let e = {
                    checkbox: ["layui-form-checkbox", "layui-form-checked", "checkbox"],
                    _switch: ["layui-form-switch", "layui-form-onswitch", "switch"]
                }, i = u.find("input[type=checkbox]"), a = function (e, i) {
                    let a = t(this);
                    e.on("click", function () {
                        let t = a.attr("lay-filter"), n = (a.attr("lay-text") || "").split("|");
                        a[0].disabled || (a[0].checked ? (a[0].checked = !1, e.removeClass(i[1]).find("em").text(n[1])) : (a[0].checked = !0, e.addClass(i[1]).find("em").text(n[0])), layui.event.call(a[0], l, i[2] + "(" + t + ")", {
                            elem: a[0],
                            value: a[0].value,
                            othis: e
                        }))
                    })
                };
                i.each(function (i, n) {
                    let l = t(this), r = l.attr("lay-skin"), s = (l.attr("lay-text") || "").split("|"),
                        o = this.disabled;
                    "switch" === r && (r = "_" + r);
                    let u = e[r] || e.checkbox;
                    if ("string" == typeof l.attr("lay-ignore")) return l.show();
                    let d = l.next("." + u[0]),
                        f = t(['<div class="layui-unselect ' + u[0], n.checked ? " " + u[1] : "", o ? " layui-checkbox-disbaled " + c : "", '"', r ? ' lay-skin="' + r + '"' : "", ">", function () {
                            let e = n.title.replace(/\s/g, ""), t = {
                                checkbox: [e ? "<span>" + n.title + "</span>" : "", '<i class="layui-icon layui-icon-ok"></i>'].join(""),
                                _switch: "<em>" + ((n.checked ? s[0] : s[1]) || "") + "</em><i></i>"
                            };
                            return t[r] || t.checkbox
                        }(), "</div>"].join(""));
                    d[0] && d.remove(), l.after(f), a.call(this, f, u)
                })
            }, radio: function () {
                let e = "layui-form-radio", i = ["&#xe643;", "&#xe63f;"], a = u.find("input[type=radio]"),
                    n = function (a) {
                        let n = t(this), s = "layui-anim-scaleSpring";
                        a.on("click", function () {
                            let o = n[0].name, c = n.parents(r), u = n.attr("lay-filter"),
                                d = c.find("input[name=" + o.replace(/([.#\[\]])/g, "\\$1") + "]");
                            n[0].disabled || (layui.each(d, function () {
                                let a = t(this).next("." + e);
                                this.checked = !1, a.removeClass(e + "ed"), a.find(".layui-icon").removeClass(s).html(i[1])
                            }), n[0].checked = !0, a.addClass(e + "ed"), a.find(".layui-icon").addClass(s).html(i[0]), layui.event.call(n[0], l, "radio(" + u + ")", {
                                elem: n[0],
                                value: n[0].value,
                                othis: a
                            }))
                        })
                    };
                a.each(function (a, l) {
                    let r = t(this), s = r.next("." + e), o = this.disabled;
                    if ("string" == typeof r.attr("lay-ignore")) return r.show();
                    s[0] && s.remove();
                    let u = t(['<div class="layui-unselect ' + e, l.checked ? " " + e + "ed" : "", (o ? " layui-radio-disbaled " + c : "") + '">', '<i class="layui-anim layui-icon">' + i[l.checked ? 0 : 1] + "</i>", "<div>" + function () {
                        let e = l.title || "";
                        return "string" == typeof r.next().attr("lay-radio") && (e = r.next().html(), r.next().remove()), e
                    }() + "</div>", "</div>"].join(""));
                    r.after(u), n.call(this, u)
                })
            }
        };
        return e ? d[e] ? d[e]() : a.error("不支持的" + e + "表单渲染") : layui.each(d, function (e, t) {
            t()
        }), n
    };
    let d = function () {
        let e = null, a = f.config.verify, s = "layui-form-danger", o = {}, c = t(this), u = c.parents(r),
            d = u.find("*[lay-verify]"), v = c.parents("form")[0], h = c.attr("lay-filter");
        return layui.each(d, function (l, r) {
            let o = t(this), c = o.attr("lay-verify").split("|"), u = o.attr("lay-verType"), d = o.val();
            if (o.removeClass(s), layui.each(c, function (t, l) {
                let f = "", v = "function" == typeof a[l];
                if (a[l]) {
                    let c = v ? f = a[l](d, r) : !a[l][0].test(d);
                    if (f = f || a[l][1], "required" === l && (f = o.attr("lay-reqText") || f), c) return "tips" === u ? i.tips(f, function () {
                        return "string" == typeof o.attr("lay-ignore") || "select" !== r.tagName.toLowerCase() && !/^checkbox|radio$/.test(r.type) ? o : o.next()
                    }(), {tips: 1}) : "alert" === u ? i.alert(f, {title: "提示", shadeClose: !0}) : i.msg(f, {
                        icon: 5,
                        shift: 6
                    }), n.android || n.ios || setTimeout(function () {
                        r.focus()
                    }, 7), o.addClass(s), e = !0
                }
            }), e) return e
        }), !e && (o = f.getValue(null, u), layui.event.call(this, l, "submit(" + h + ")", {
            elem: this,
            form: v,
            field: o
        }))
    }, f = new u, v = t(document), h = t(window);
    f.render(), v.on("reset", r, function () {
        let e = t(this).attr("lay-filter");
        setTimeout(function () {
            f.render(null, e)
        }, 50)
    }), v.on("submit", r, d).on("click", "*[lay-submit]", d), e(l, f)
});