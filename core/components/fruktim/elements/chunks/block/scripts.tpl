{$_modx->regClientScript("assets/templ/js/ms2.js")}
{if 'id' | resource != 584 ?}
{$_modx->regClientScript("assets/components/msminicartdynamic/js/web/msminicartdynamic.js")}
{/if}
{$_modx->config.metrika}

<script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite -
    //   see more here
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {
        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }
    // this is set to Bootstrapious website as you cannot
    // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
    // while using file:// protocol
    // pls don't forget to change to your domain :)
    injectSvgSprite('assets/components/fruktim/icons/svg-sprite.svg');
</script>

{$_modx->regClientScript("assets/components/mvtforms2/js/web/mvtforms2.dsmc.js")}