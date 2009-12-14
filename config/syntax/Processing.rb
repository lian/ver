# Encoding: UTF-8

{fileTypes: ["pde"],
 foldingStartMarker: /(\/\*\*|\{\s*$)/,
 foldingStopMarker: /(\*\*\/|^\s*\})/,
 keyEquivalent: /^~P/,
 name: "Processing",
 patterns: 
  [{match: 
     /\b(abs|acos|alpha|alpha|ambient|ambientLight|append|applyMatrix|arc|asin|atan2|atan|background|beginCamera|beginShape|bezier|bezierDetail|bezierPoint|bezierTangent|bezierVertex|binary|blend|blend|blue|boolean|box|brightness|byte|cache|camera|ceil|char|charAt|color|colorMode|concat|constrain|contract|copy|copy|cos|createFont|cursor|curve|curveDetail|curvePoint|curveSegments|curveTightness|curveVertex|day|degrees|delay|directionalLight|dist|duration|ellipse|ellipseMode|emissive|endCamera|endShape|equals|exp|expand|fill|filter|filter|float|floor|frameRate|frustum|get|get|green|hex|hint|hour|hue|image|imageMode|indexOf|int|join|keyPressed|keyReleased|length|lerp|lightFalloff|lightSpecular|lights|line|link|list|loadBytes|loadFont|loadImage|loadPixels|loadSound|loadStrings|log|lookat|loop|loop|mag|mask|max|millis|min|minute|modelX|modelY|modelZ|month|mouseDragged|mouseMoved|mousePressed|mouseReleased|nf|nfc|nfp|nfs|noCursor|noFill|noLoop|noLoop|noSmooth|noStroke|noTint|noise|noiseDetail|noiseSeed|normal|open|openStream|ortho|param|pause|perspective|play|point|pointLight|popMatrix|pow|print|printCamera|printMatrix|printProjection|println|pushMatrix|quad|radians|random|randomSeed|rect|rectMode|red|redraw|resetMatrix|reverse|rotate|rotateX|rotateY|rotateZ|round|saturation|save|saveBytes|saveFrame|saveStrings|scale|screenX|screenY|screenZ|second|set|set|shininess|shorten|sin|size|smooth|sort|specular|sphere|sphereDetail|splice|split|spotLight|sq|sqrt|status|stop|str|stroke|strokeCap|strokeJoin|strokeWeight|subset|substring|switch|tan|text|textAlign|textAscent|textDescent|textFont|textLeading|textMode|textSize|textWidth|texture|textureMode|time|tint|toLowerCase|toUpperCase|translate|triangle|trim|unHint|unbinary|unhex|updatePixels|vertex|volume|year|draw|setup)\b/,
    name: "support.function.processing"},
   {captures: {0 => {name: "punctuation.definition.comment.processing"}},
    match: /\/\*\*\//,
    name: "comment.block.empty.processing"},
   {begin: /\/\*/,
    captures: {0 => {name: "punctuation.definition.comment.processing"}},
    end: "\\*/",
    name: "comment.block.processing"},
   {begin: /\/\*\*/,
    captures: {0 => {name: "punctuation.definition.comment.processing"}},
    end: "\\*/",
    name: "comment.block.documentation.processing",
    patterns: 
     [{captures: 
        {1 => {name: "keyword.other.documentation.params.processing"},
         2 => {name: "keyword.other.documentation.value.processing"}},
       match: /\*\s*@(param)\s*([a-z][a-zA-Z0-9_]+)\s*/},
      {captures: 
        {1 => {name: "keyword.other.embedded-docs.params.processing"}},
       match: /\*\s*@([a-zA-Z0-9_-]+)\s*/}]},
   {captures: {1 => {name: "punctuation.definition.comment.processing"}},
    match: /(\/\/).*$\n?/,
    name: "comment.line.double-slash.processing"},
   {match: 
     /\b(class|interface|void|color|string|byte|short|char|int|long|float|double|boolean|[A-Z][A-Za-z0-9]+)\b/,
    name: "storage.type.processing"},
   {match: /\b(private|protected|public)\b/,
    name: "storage.modifier.access-control.processing"},
   {match: 
     /\b(abstract|final|native|static|transient|synchronized|volatile|strictfp|extends|implements)\b/,
    name: "storage.modifier.processing"},
   {match: /\b(try|catch|finally|throw)\b/,
    name: "keyword.control.catch-exception.processing"},
   {match: 
     /\b(return|break|case|continue|default|do|while|for|switch|if|else)\b/,
    name: "keyword.control.processing"},
   {match: /\b(import|new|package|throws)\b/,
    name: "keyword.other.class-fns.processing"},
   {match: /\b(instanceof)\b/, name: "keyword.operator.processing"},
   {match: /\b(false|null|true)\b/, name: "constant.language.processing"},
   {match: 
     /\b(focused|frameCount|frameRate|height|height|key|keyCode|keyPressed|mouseButton|mousePressed|mouseX|mouseY|online|pixels|pmouseX|pmouseY|screen|width)\b/,
    name: "constant.other.processing"},
   {match: 
     /\b(ADD|ALIGN_CENTER|ALIGN_LEFT|ALIGN_RIGHT|ALPHA|ALPHA_MASK|ALT|AMBIENT|ARGB|ARROW|BACKSPACE|BEVEL|BLEND|BLEND|BLUE_MASK|BLUR|CENTER|CENTER_RADIUS|CHATTER|CODED|COMPLAINT|COMPONENT|COMPOSITE|CONCAVE_POLYGON|CONTROL|CONVEX_POLYGON|CORNER|CORNERS|CROSS|CUSTOM|DARKEST|DEGREES|DEG_TO_RAD|DELETE|DIFFERENCE|DIFFUSE|DISABLED|DISABLE_TEXT_SMOOTH|DOWN|ENTER|EPSILON|ESC|GIF|GREEN_MASK|GREY|HALF|HALF_PI|HALF_PI|HAND|HARD_LIGHT|HSB|IMAGE|INVERT|JAVA2D|JPEG|LEFT|LIGHTEST|LINES|LINE_LOOP|LINE_STRIP|MAX_FLOAT|MITER|MODEL|MOVE|MULTIPLY|NORMALIZED|NO_DEPTH_TEST|NTSC|ONE|OPAQUE|OPENGL|ORTHOGRAPHIC|OVERLAY|P2D|P3D|PAL|PERSPECTIVE|PI|PI|PIXEL_CENTER|POINTS|POLYGON|POSTERIZE|PROBLEM|PROJECT|QUADS|QUAD_STRIP|QUARTER_PI|RADIANS|RAD_TO_DEG|RED_MASK|REPLACE|RETURN|RGB|RIGHT|ROUND|SCREEN|SECAM|SHIFT|SOFT_LIGHT|SPECULAR|SQUARE|SUBTRACT|SVIDEO|TAB|TARGA|TEXT|TFF|THIRD_PI|THRESHOLD|TIFF|TRIANGLES|TRIANGLE_FAN|TRIANGLE_STRIP|TUNER|TWO|TWO_PI|TWO_PI|UP|WAIT|WHITESPACE)\b/,
    name: "support.constant.processing"},
   {match: 
     /\b(Array|Character|Integer|Math|Object|PFont|PImage|PSound|StringBuffer|Thread)\b/,
    name: "support.class.processing"},
   {match: /\b(this|super)\b/, name: "variable.language.processing"},
   {match: 
     /\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\.?[0-9]*)|(\.[0-9]+))((e|E)(\+|-)?[0-9]+)?)([LlFfUuDd]|UL|ul)?\b/,
    name: "constant.numeric.processing"},
   {begin: /"/,
    beginCaptures: 
     {0 => {name: "punctuation.definition.string.begin.processing"}},
    end: "\"",
    endCaptures: {0 => {name: "punctuation.definition.string.end.processing"}},
    name: "string.quoted.double.processing",
    patterns: [{match: /\\./, name: "constant.character.escape.processing"}]},
   {begin: /'/,
    beginCaptures: 
     {0 => {name: "punctuation.definition.string.begin.processing"}},
    end: "'",
    endCaptures: {0 => {name: "punctuation.definition.string.end.processing"}},
    name: "string.quoted.single.processing",
    patterns: [{match: /\\./, name: "constant.character.escape.processing"}]},
   {captures: 
     {1 => {name: "storage.type.class.processing"},
      2 => {name: "entity.name.type.class.processing"},
      3 => {name: "storage.modifier.extends.processing"},
      4 => {name: "entity.other.inherited-class.processing"}},
    match: 
     /\b(class)\s+([a-zA-Z_](?:\w|\.)*)(?:\s+(extends)\s+([a-zA-Z_](?:\w|\.)*))?/,
    name: "meta.class.processing"}],
 scopeName: "source.processing",
 uuid: "EF0D256C-2FCB-4A87-9250-0F5F82A366B9"}
