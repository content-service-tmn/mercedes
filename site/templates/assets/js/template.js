$(document).ready(function(){$(".js-smooth-scroll").not('[href="#"]').not('[href="#0"]').click(function(t){if(location.pathname.replace(/^\//,"")==this.pathname.replace(/^\//,"")&&location.hostname==this.hostname){var s=$(this.hash);(s=s.length?s:$("[name="+this.hash.slice(1)+"]")).length&&(t.preventDefault(),$("html, body").animate({scrollTop:s.offset().top},1e3,function(){var t=$(s);if(t.focus(),t.is(":focus"))return!1;t.attr("tabindex","-1"),t.focus()}))}}),$(".custom-switcher__link:first-child").addClass("is-active"),$(".custom-switcher__container .custom-switcher__tab:first-child").addClass("is-active"),$(".custom-switcher__link").click(function(){var t=$(".custom-switcher__link").index(this);$(".custom-switcher__link").removeClass("is-active"),$(this).addClass("is-active"),$(".custom-switcher__container").each(function(){$(this).find(".custom-switcher__tab").removeClass("is-active").eq(t).addClass("is-active")})})});
//# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInRlbXBsYXRlLmpzIl0sIm5hbWVzIjpbIiQiLCJkb2N1bWVudCIsInJlYWR5Iiwibm90IiwiY2xpY2siLCJldmVudCIsImxvY2F0aW9uIiwicGF0aG5hbWUiLCJyZXBsYWNlIiwidGhpcyIsImhvc3RuYW1lIiwidGFyZ2V0IiwiaGFzaCIsImxlbmd0aCIsInNsaWNlIiwicHJldmVudERlZmF1bHQiLCJhbmltYXRlIiwic2Nyb2xsVG9wIiwib2Zmc2V0IiwidG9wIiwiJHRhcmdldCIsImZvY3VzIiwiaXMiLCJhdHRyIiwiYWRkQ2xhc3MiLCJpIiwiaW5kZXgiLCJyZW1vdmVDbGFzcyIsImVhY2giLCJmaW5kIiwiZXEiXSwibWFwcGluZ3MiOiJBQUFBQSxFQUFFQyxVQUFVQyxNQUFNLFdBQ2hCRixFQUFFLHFCQUVDRyxJQUFJLGNBQ0pBLElBQUksZUFDSkMsTUFBTSxTQUFTQyxHQUVkLEdBQ0VDLFNBQVNDLFNBQVNDLFFBQVEsTUFBTyxLQUFPQyxLQUFLRixTQUFTQyxRQUFRLE1BQU8sS0FFckVGLFNBQVNJLFVBQVlELEtBQUtDLFNBQzFCLENBRUEsSUFBSUMsRUFBU1gsRUFBRVMsS0FBS0csT0FDcEJELEVBQVNBLEVBQU9FLE9BQVNGLEVBQVNYLEVBQUUsU0FBV1MsS0FBS0csS0FBS0UsTUFBTSxHQUFLLE1BRXpERCxTQUVUUixFQUFNVSxpQkFDTmYsRUFBRSxjQUFjZ0IsUUFBUSxDQUN0QkMsVUFBV04sRUFBT08sU0FBU0MsS0FDMUIsSUFBTSxXQUdQLElBQUlDLEVBQVVwQixFQUFFVyxHQUVoQixHQURBUyxFQUFRQyxRQUNKRCxFQUFRRSxHQUFHLFVBQ2IsT0FBTyxFQUVQRixFQUFRRyxLQUFLLFdBQVcsTUFDeEJILEVBQVFDLGNBT2xCckIsRUFBRSxzQ0FBc0N3QixTQUFTLGFBQ2pEeEIsRUFBRSxpRUFBaUV3QixTQUFTLGFBQzVFeEIsRUFBRSwwQkFBMEJJLE1BQU0sV0FDaEMsSUFBSXFCLEVBQUl6QixFQUFFLDBCQUEwQjBCLE1BQU1qQixNQUMxQ1QsRUFBRSwwQkFBMEIyQixZQUFZLGFBQ3hDM0IsRUFBRVMsTUFBTWUsU0FBUyxhQUNqQnhCLEVBQUUsK0JBQStCNEIsS0FBSyxXQUNwQzVCLEVBQUVTLE1BQU1vQixLQUFLLHlCQUF5QkYsWUFBWSxhQUFhRyxHQUFHTCxHQUFHRCxTQUFTIiwiZmlsZSI6InRlbXBsYXRlLmpzIiwic291cmNlc0NvbnRlbnQiOlsiJChkb2N1bWVudCkucmVhZHkoZnVuY3Rpb24oKSB7XG4gICQoJy5qcy1zbW9vdGgtc2Nyb2xsJylcbiAgICAvLyBSZW1vdmUgbGlua3MgdGhhdCBkb24ndCBhY3R1YWxseSBsaW5rIHRvIGFueXRoaW5nXG4gICAgLm5vdCgnW2hyZWY9XCIjXCJdJylcbiAgICAubm90KCdbaHJlZj1cIiMwXCJdJylcbiAgICAuY2xpY2soZnVuY3Rpb24oZXZlbnQpIHtcbiAgICAgIC8vIE9uLXBhZ2UgbGlua3NcbiAgICAgIGlmIChcbiAgICAgICAgbG9jYXRpb24ucGF0aG5hbWUucmVwbGFjZSgvXlxcLy8sICcnKSA9PSB0aGlzLnBhdGhuYW1lLnJlcGxhY2UoL15cXC8vLCAnJylcbiAgICAgICAgJiZcbiAgICAgICAgbG9jYXRpb24uaG9zdG5hbWUgPT0gdGhpcy5ob3N0bmFtZVxuICAgICAgKSB7XG4gICAgICAgIC8vIEZpZ3VyZSBvdXQgZWxlbWVudCB0byBzY3JvbGwgdG9cbiAgICAgICAgdmFyIHRhcmdldCA9ICQodGhpcy5oYXNoKTtcbiAgICAgICAgdGFyZ2V0ID0gdGFyZ2V0Lmxlbmd0aCA/IHRhcmdldCA6ICQoJ1tuYW1lPScgKyB0aGlzLmhhc2guc2xpY2UoMSkgKyAnXScpO1xuICAgICAgICAvLyBEb2VzIGEgc2Nyb2xsIHRhcmdldCBleGlzdD9cbiAgICAgICAgaWYgKHRhcmdldC5sZW5ndGgpIHtcbiAgICAgICAgICAvLyBPbmx5IHByZXZlbnQgZGVmYXVsdCBpZiBhbmltYXRpb24gaXMgYWN0dWFsbHkgZ29ubmEgaGFwcGVuXG4gICAgICAgICAgZXZlbnQucHJldmVudERlZmF1bHQoKTtcbiAgICAgICAgICAkKCdodG1sLCBib2R5JykuYW5pbWF0ZSh7XG4gICAgICAgICAgICBzY3JvbGxUb3A6IHRhcmdldC5vZmZzZXQoKS50b3BcbiAgICAgICAgICB9LCAxMDAwLCBmdW5jdGlvbigpIHtcbiAgICAgICAgICAgIC8vIENhbGxiYWNrIGFmdGVyIGFuaW1hdGlvblxuICAgICAgICAgICAgLy8gTXVzdCBjaGFuZ2UgZm9jdXMhXG4gICAgICAgICAgICB2YXIgJHRhcmdldCA9ICQodGFyZ2V0KTtcbiAgICAgICAgICAgICR0YXJnZXQuZm9jdXMoKTtcbiAgICAgICAgICAgIGlmICgkdGFyZ2V0LmlzKFwiOmZvY3VzXCIpKSB7IC8vIENoZWNraW5nIGlmIHRoZSB0YXJnZXQgd2FzIGZvY3VzZWRcbiAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgJHRhcmdldC5hdHRyKCd0YWJpbmRleCcsJy0xJyk7IC8vIEFkZGluZyB0YWJpbmRleCBmb3IgZWxlbWVudHMgbm90IGZvY3VzYWJsZVxuICAgICAgICAgICAgICAkdGFyZ2V0LmZvY3VzKCk7IC8vIFNldCBmb2N1cyBhZ2FpblxuICAgICAgICAgICAgfTtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH0pO1xuXG4gICAgJCgnLmN1c3RvbS1zd2l0Y2hlcl9fbGluazpmaXJzdC1jaGlsZCcpLmFkZENsYXNzKCdpcy1hY3RpdmUnKTtcbiAgICAkKCcuY3VzdG9tLXN3aXRjaGVyX19jb250YWluZXIgLmN1c3RvbS1zd2l0Y2hlcl9fdGFiOmZpcnN0LWNoaWxkJykuYWRkQ2xhc3MoJ2lzLWFjdGl2ZScpO1xuICAgICQoJy5jdXN0b20tc3dpdGNoZXJfX2xpbmsnKS5jbGljayhmdW5jdGlvbigpIHtcbiAgICAgIHZhciBpID0gJCgnLmN1c3RvbS1zd2l0Y2hlcl9fbGluaycpLmluZGV4KHRoaXMpO1xuICAgICAgJCgnLmN1c3RvbS1zd2l0Y2hlcl9fbGluaycpLnJlbW92ZUNsYXNzKCdpcy1hY3RpdmUnKTtcbiAgICAgICQodGhpcykuYWRkQ2xhc3MoJ2lzLWFjdGl2ZScpO1xuICAgICAgJCgnLmN1c3RvbS1zd2l0Y2hlcl9fY29udGFpbmVyJykuZWFjaChmdW5jdGlvbigpIHtcbiAgICAgICAgJCh0aGlzKS5maW5kKCcuY3VzdG9tLXN3aXRjaGVyX190YWInKS5yZW1vdmVDbGFzcygnaXMtYWN0aXZlJykuZXEoaSkuYWRkQ2xhc3MoJ2lzLWFjdGl2ZScpO1xuICAgICAgfSk7XG4gICAgfSk7XG4gICAgXG59KTsiXX0=
