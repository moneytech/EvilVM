
module Colors
  List = [
    ["almond", "efdbc5"],
    ["antique brass", "cd9575"],
    ["apricot", "fdd9b5"],
    ["aquamarine", "78dbe2"],
    ["asparagus", "87a96b"],
    ["atomic tangerine", "ffa474"],
    ["banana mania", "fae7b5"],
    ["beaver", "9f8170"],
    ["bittersweet", "fd7c6e"],
    ["black", "232323"],
    ["blue", "1f75fe"],
    ["blue bell", "adadd6"],
    ["blue green", "199ebd"],
    ["blue green", "1f75fe"],
    ["blue violet", "7366bd"],
    ["blush", "de5d83"],
    ["brick red", "cb4154"],
    ["brown", "b5674d"],
    ["burnt orange", "ff7f49"],
    ["burnt sienna", "ea7e5d"],
    ["cadet blue", "b0b7c6"],
    ["canary", "ffff99"],
    ["caribbean green", "1cd3a2"],
    ["carnation pink", "ffaacc"],
    ["cerise", "ff43a4"],
    ["cerulean", "1dacd6"],
    ["chesnut", "bc5d58"],
    ["copper", "dd9475"],
    ["cornflower", "9aceeb"],
    ["cotton candy", "ffbcd9"],
    ["dandelion", "fddb6d"],
    ["denim", "2b6cc4"],
    ["desert sand", "efcdb8"],
    ["eggplant", "dd4492"],
    ["electric lime", "1df914"],
    ["fern", "71bc78"],
    ["forest green", "6dae81"],
    ["fuchisia", "c364c5"],
    ["fuzzy wuzzy brown", "cc6666"],
    ["gold", "e7c697"],
    ["goldenrod", "fcd975"],
    ["granny smith apple", "a8e4a0"],
    ["gray", "95918c"],
    ["green", "1cac78"],
    ["green yellow", "f0e891"],
    ["hot magenta", "ff1dce"],
    ["inch worm", "b2ec5d"],
    ["indigo", "5d76cb"],
    ["jazzberry jam", "ca3767"],
    ["jungle green", "3bb08f"],
    ["laser lemon", "fdfc74"],
    ["lavender", "fcb4d5"],
    ["macaroni and cheese", "ffbd88"],
    ["magenta", "fcb4d5"],
    ["mahogany", "cd4a4a"],
    ["manatee", "979aaa"],
    ["mango tango", "ff8243"],
    ["maroon", "c8385a"],
    ["mauvelous", "ef98aa"],
    ["melon", "fdbcb4"],
    ["midnight blue", "1a4876"],
    ["mountain meadow", "30ba8f"],
    ["navy blue", "1974d2"],
    ["neon carrot", "ffa343"],
    ["olive green", "bab86c"],
    ["orange", "ff7538"],
    ["orichid", "c0448f"],
    ["outer space", "414aac"],
    ["outrageous orange", "ff6e4a"],
    ["pacific blue", "1ca9c9"],
    ["peach", "ffcfab"],
    ["periwinkle", "c5d0e6"],
    ["piggy pink", "fdd7e4"],
    ["pine green", "158078"],
    ["pink flamingo", "fc74fd"],
    ["pink sherbet", "f780a1"],
    ["plum", "8e4584"],
    ["purple heart", "7442c8"],
    ["purple mountains' magesty", "9d81ba"],
    ["purple pizza", "ff1dce"],
    ["radical red", "ff496c"],
    ["raw sienna", "d68a59"],
    ["razzle dazzle rose", "e6a8d7"],
    ["razzmatazz", "e3256b"],
    ["red", "ee204d"],
    ["red orange", "ff5349"],
    ["red violet", "c0448f"],
    ["robin egg blue", "1fcecb"],
    ["royal purple", "7851a9"],
    ["salmon", "ff9baa"],
    ["scarlet", "fc2847"],
    ["screamin green", "76ff7a"],
    ["sea green", "9fe2bf"],
    ["sepia", "a5694f"],
    ["shadow", "8a795d"],
    ["shamrock", "45cea2"],
    ["shocking pink", "fb7efd"],
    ["silver", "cdc5c2"],
    ["sky blue", "80daeb"],
    ["spring green", "eceabe"],
    ["sunglow", "ffcf48"],
    ["sunset orange", "fd5e53"],
    ["tan", "faa76c"],
    ["tickle me pink", "fc89ac"],
    ["timberwolf", "dbd7d2"],
    ["tropical rain forest", "17806d"],
    ["tumbleweed", "deaa88"],
    ["turquoise blue", "77dde7"],
    ["unmellow yellow", "fdfc74"],
    ["violet (purple)", "926eae"],
    ["violet red", "f75394"],
    ["vivid tangerine", "ffa089"],
    ["vivid violet", "8f509d"],
    ["white", "ededed"],
    ["wild blue wonder", "a2add0"],
    ["wild strawberry", "f664af"],
    ["wild watermelon", "fc6c85"],
    ["wisteria", "cda4de"],
    ["yellow", "fce883"],
    ["yellow green", "c5e384"],
    ["yellow orange", "ffb653"]
  ]
end

if $0 == __FILE__
  Colors::List.each do |(name,spec)|
    name.gsub!(" ", "-")
    (r, g, b) = [spec].pack("H*").unpack("CCC")
    color  = sprintf("%03d;%03d;%03d", r, g, b)
    puts("\x1b[38;2;#{color}mtesting \x1b[7m #{name} \x1b[0m")
  end
end