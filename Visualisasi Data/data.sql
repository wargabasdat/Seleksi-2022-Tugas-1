DROP TABLE IF EXISTS data_wardah;

CREATE TABLE data_wardah (
     id SERIAL NOT NULL PRIMARY KEY,
     data json NOT NULL
);

INSERT INTO data_wardah (data)
VALUES
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-2-1648127695.png",
        "sub_category": "COLORFIT",
        "product_name": "NEW! Wardah Bundle Colorfit Lip Paint - Dazzling New York",
        "price": 99180,
        "about": "NEW! Wardah Special Bundle Colorfit Lip Paint - Dazzling New York",
        "how_to": "Ready-to-go travel pack make up to experience cities around the world",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-2-1648127477.png",
        "sub_category": "COLORFIT",
        "product_name": "NEW! Wardah Bundle Colorfit Lip Paint - Royal London",
        "price": 179580,
        "about": "NEW! Wardah Special Bundle Colorfit Lip Paint - Royal London",
        "how_to": "Ready-to-go travel pack make up to experience cities around the world",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1647485510.png",
        "sub_category": "COLORFIT, LIPS",
        "product_name": "Colorfit Last All Day Lip Paint Around the World",
        "price": 62985,
        "about": "Colorfit Last All Day Lip Paint Around the World LIMITED EDITION is the only halal matte lip cream with non-transfer formula and intense colors that lasts up to 12 hours with the result that intense non-transfer lip color that lasts all day.",
        "how_to": "Aplikasikan lipstik pada bibir., Gunakan aplikator untuk merapikan pulasan lipstik hingga ke bagian ujung bibir dengan one swipe coverage, Gunakan hingga seluruh warna merata di bibir cantikmu.",
        "ingredients": "Isododecane, Bis-Hydroxylauryl Dimethicone/IPDI Copolymer, Cyclopentasiloxane, Trisiloxane, Trimethylsiloxysilicate, Diisostearyl Malate, Hydrated Silica, Silica Dimethyl Silylate, Disteardimonium Hectorite, Cyclohexasiloxane, Propylene Carbonate, Phenoxyethanol, Ethylhexylglycerin, Aluminum Hydroxide, Tocopheryl Acetate, Triethoxycaprylylsilane, Fragrance, Cyclotetrasiloxane, Tocopherol. May Contain :CI 77891, CI 77492, CI 15850:2, CI 15850:1, CI 77499, CI 77491, CI 15850, CI 42090."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1647333599.png",
        "sub_category": "COLORFIT",
        "product_name": "Colorfit Perfect Glow Cushion",
        "price": 101650,
        "about": "Colorfit Perfect Glow Cushion merupakan base makeup dengan radiant (glow) finish dan formula yang ringan sehingga mampu menyatu dengan baik pada wajah untuk memberikan tampilan healthy-glow finish. Diformulasikan khusus dengan SkinMatch Technology untuk dapat menyatu sempurna dengan warna natural kulit dan memberikan high coverage untuk menutupi ketidaksempurnaan pada wajah. No greasy, no cakey, less oxidized formula.",
        "how_to": "Ambil bulk menggunakan puff yang disediakan dengan cara di tekan pada sponge, Aplikasikan cushion ke wajah dengan cara di tap-tap secara halus untuk hasil coverage yang optimal dan merata, Hindari gerakan menggeser agar hasilnya dapat lebih menyatu dengan kulit, Tutup rapat cushion setelah pemakaian",
        "ingredients": "SkinMatch Technology\nGlow Perfecting Pigment"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1645442966.webp",
        "sub_category": "LIPS",
        "product_name": "Everyday! Matte Lip Shot",
        "price": 46000,
        "about": "Quick set lip cream dengan hasil matte yang diformulasikan dengan quickset volatile oils yang mampu dengan cepat nge-set di bibir. Mengandung vitamin C yang dapat membuat bibir tetap healthy saat online meeting atau online class. Didesign dengan 5 spesial camera ready shades yang membuat tampilan lebih nge-pop di kameran dan digital screen.",
        "how_to": "Aplikasikan Everyday! Matte Lip Shot dengan aplikator secara merata pada bibir",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1644227185.png",
        "sub_category": "FACE",
        "product_name": "Lightening Liquid Foundation 6ml",
        "price": 18500,
        "about": "Wardah Lightening Liquid Foundation adalah liquid foundation yang terasa ringan dan nyaman digunakan sehari-hari. Memilki coverage medium, mencerahkan, dan tahan lama hingga 12 jam.",
        "how_to": "1. Aplikasikan Wardah Lightening Liquid Foundation secukupnya pada wajah, 2. Ratakan ke seluruh wajah menggunakan tangan/brush/ sponge, 3. Wajah cerahmu siap untuk menjalani aktivitas",
        "ingredients": "Aqua, Cyclopentasiloxane, Dimethicone, Propanediol, Ethylhexyl Methoxycinnamate, Phenyl Trimethicone, Niacinamide, Polymethyl Methacrylate, Vinyl Dimethicone/Methicone Silsesquioxane Crosspolymer, Trehalose, PEG/PPG-18/18 Dimethicone, Magnesium Sulfate, Divinyldimethicone/Dimethicone Crosspolymer, Phenoxyethanol, Polyhydroxystearic Acid, Polymethylsilsesquioxane, Silica, Sorbitan Olivate, Tocopheryl Acetate, Aluminum Hydroxide, Hydrogen Dimethicone, Allantoin, Zinc Gluconate, Ethylhexylglycerin, Methicone, Disodium EDTA. May Contain :CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1647060273.png",
        "sub_category": "EYE",
        "product_name": "Eyexpert Matic Brow Definer",
        "price": 50000,
        "about": "Produk pensil alis mekanik dengan ujung berbentuk oval pipih sehingga memudahkan untuk menggambar alis secara presisi. Dengan tekstur powdery dan smooth, serta intensitas yang natural menjadikan alis tampak cantik natural. Waterproof, wudhu friendly, serta tahan lama hingga 8 jam.",
        "how_to": "Rapikan alis dengan bagian spoolie, gambar bingkai alis dengan ujung pensil, isi bagian dalam alis, kemudian baurkan pensil dengan spoolie.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1648120375.png",
        "sub_category": "COLORFIT, FACE",
        "product_name": "Colorfit Cream Blush",
        "price": 45900,
        "about": "Cream Blush with cream to powder texture. Infused with Vitamin E. Airy light and smooth creamy consistency allow blush to easily blend on skin or foundation. Glow Color pigment, gives intense long lasting color. Fresh blushing looks for up to 8 hours!",
        "how_to": "Aplikasikan Wardah Colorfit Cream Blush di area pipi dengan mengoleskan cream blush menggunakan jari/sponge. Colorfit Cream Blush dapat diaplikasikan setelah menggunakan foundation maupun bedak.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1633012689.png",
        "sub_category": "COLORFIT, LIPS",
        "product_name": "Colorfit Fresh Lip Ink Serum",
        "price": 57150,
        "about": "The Next Level of Lip Ink! Lip Ink Serum Infused with sunflower & jojoba oil, with watery texture. Make your dreams come true with 8 fresh matte lip colors that give you the ultimate bare lip sensation and a healthy lip look to freshen up your day wherever you are! ",
        "how_to": "Aplikasikan lipstik pada bibir., Gunakan aplikator untuk merapikan pulasan lipstik hingga ke bagian ujung bibir dengan one swipe coverage, Gunakan hingga seluruh warna merata di bibir cantikmu.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1618798985.png",
        "sub_category": "COLORFIT, FACE",
        "product_name": "Colorfit Matte Foundation",
        "price": 64800,
        "about": "Wardah Colorfit Matte Foundation merupakan matte foundation dengan SPF 30 PA+++ yang ringan dan memberikan coverage tahan lama serta tidak transfer. Diformulasikan khusus dengan SkinMatch Technology untuk dapat menyatu sempurna dengan warna natural kulit dan memberikan efek oil control pada wajah.",
        "how_to": "1. Aplikasikan Wardah Colorfit Matte Foundation pada wajah dengan tangan, 2. Baurkan hingga merata dengan spons atau kuas sesuai dengan hasil yang diinginkan",
        "ingredients": "Aqua, Cyclopentasiloxane, Isododecane, Methyl Methacrylate Crosspolymer, Dimethicone, Ethylhexyl Methoxycinnamate, Caprylyl Methicone, Trimethylsiloxysilicate, Butylene Glycol, PEG-9 Polydimethylsiloxyethyl Dimethicone, Titanium Dioxide, Dicaprylyl Carbonate, Hydrogenated Polyisobutene, Sodium Chloride, Phenoxyethanol, Pentylene Glycol, Tocopheryl Acetate, Triethoxycaprylylsilane, Divinyldimethicone/Dimethicone Crosspolymer, Hydrated Silica, Silica, Disteardimonium Hectorite, Aluminum Hydroxide, Propylene Carbonate, BHT, Ethylhexylglycerin, Hydrogenated Lecithin, Cyclotetrasiloxane, Glycerin, Caprylic/Capric Triglyceride, Centella Asiatica Extract, Cholesterol. May Contain : CI 77491, CI 77492, CI 77499, CI 77891."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1616584925.png",
        "sub_category": "COLORFIT, FACE",
        "product_name": "Colorfit Velvet Powder Foundation",
        "price": 63450,
        "about": "Wardah Colorfit Velvet Powder Foundation merupakan kombinasi foundation dan bedak yang terasa halus untuk memberikan coverage yang natural namun buildable (dapat diatur untuk medium hingga high coverage). Mampu memberikan finish yang dapat menyatu dengan baik wajah dan mampu menyamarkan pori serta menahan minyak secara tahan lama hingga 12 jam.",
        "how_to": "1. Aplikasikan bedak pada wajah dengan menggunakan spons, 2. Lipat spons menjadi dua bagian untuk meratakan powder foundation di daerah bawah mata",
        "ingredients": "Talc, Titanium Dioxide, Ethylhexyl Methoxycinnamate, Silica, Isopropyl Myristate, Nylon-12, Octyldodecanol, Dipentaerythrityl Hexahydroxystearate/Hexastearate/Hexarosinate, Phenoxyethanol, Triethoxycaprylylsilane, PCA Dimethicone, Aluminum Hydroxide, Dimethicone, HDI/Trimethylol Hexyllactone Crosspolymer, Hydrogen Dimethicone, Polymethyl Methacrylate, Ethylhexylglycerin, Methicone, Fragrance, Tocopheryl Acetate, Glycerin, Caprylic/Capric Triglyceride, Aqua, Centella Asiatica Extract, Tocopherol, Hydrogenated Lecithin, Cholesterol. May Contain: CI 77891, CI 77491, CI 77492, CI 77499, CI 77947."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1655885007.png",
        "sub_category": "COLORFIT",
        "product_name": "Refill Colorfit Perfect Glow Cushion SPF 33 PA++",
        "price": 82500,
        "about": "Colorfit Perfect Glow Cushion kemasan refill merupakan base makeup dengan radiant (glow) finish dan formula yang ringan sehingga mampu menyatu dengan baik pada wajah untuk memberikan tampilan healthy-glow finish dengan SPF 33 PA++. Diformulasikan khusus dengan SkinMatch Technology untuk dapat menyatu sempurna dengan warna natural kulit dan memberikan high coverage untuk menutupi ketidaksempurnaan pada wajah. No greasy, no cakey, less oxidized formula.",
        "how_to": "Ambil bulk menggunakan puff yang disediakan dengan cara di tekan pada sponge, Aplikasikan cushion ke wajah dengan cara di tap-tap secara halus untuk hasil coverage yang optimal dan merata, Hindari gerakan menggeser agar hasilnya dapat lebih menyatu dengan kulit, Tutup rapat cushion setelah pemakaian",
        "ingredients": "SkinMatch Technology\nGlow Perfecting Pigment"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1631589850.png",
        "sub_category": "FACE",
        "product_name": "Refill Lightening Powder Foundation Extra Cover",
        "price": 41000,
        "about": "Say no more to unmatched shades!",
        "how_to": "Ulaskan pada wajah dengan cara tap-tap menggunakan sponge.",
        "ingredients": "Mica, Talc, Titanium Dioxide, Isopropyl Myristate, Silica, Zinc Stearate, Lauroyl Lysine, Dipentaerythrityl Hexahydroxystearate/Hexastearate/Hexarosinate, Octyldodecanol, Dimethicone, Dimethiconol Stearate, Phenoxyethanol, Triethoxycaprylylsilane, Ethylhexylglycerin, Aluminum Hydroxide, Hydrogen Dimethicone, BHT, Fragrance, Glycyrrhiza Glabra (Licorice) Root Extract, Tocopherol, Methicone. May Contain : CI 77492, CI 77891, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1631589242.png",
        "sub_category": "FACE",
        "product_name": "Refill BB Cake Powder",
        "price": 59500,
        "about": "Katakan bye-bye pada kilap berlebih wajahmu dan sapa rona cerahmu dengan Wardah Lightening BB Cake Powder! Bedak padat SPF 15 PA++ dengan Oil-Balancing Beads dan Lightfilter Fillers yang meKatakan bye-bye pada kilap berlebih wajahmu dan sapa rona cerahmu dengan Wardah Lightening BB Cake Powder! Bedak padat SPF 15 PA++ dengan Oil-Balancing Beads dan Lightfilter Fillers yang membuat kulit wajah normal-berminyak tampak bebas kilap, matte, cerah sepanjang hari. Diperkaya dengan Licorice Extract dan Vitamin B3 yang dikenal membantu proses pencerahan kulit wajah natural. Tersedia dalam 3 varian warna Sheer Pink, Light Beige, dan Ivory yang pas untuk setiap rona kulit beauty believer di dalam dirimu! Buat kulit wajah normal-berminyak tampak bebas kilap, matte, cerah sepanjang hari. Diperkaya dengan Licorice Extract dan Vitamin B3 yang dikenal membantu proses pencerahan kulit wajah natural.",
        "how_to": "Usapkan lembut pada seluruh wajah, terutama T-Zone setelah menggunakan Wardah Lightening BB Cream.",
        "ingredients": "Talc, Titanium Dioxide, Ethylhexyl Methoxycinnamate, Silica, Isopropyl Myristate, Nylon-12, Octyldodecanol, Dipentaerythrityl Hexahydroxystearate/Hexastearate/Hexarosinate, Zinc Oxide, PCA Dimethicone, Phenoxyethanol, Hydrogen Dimethicone, HDI/Trimethylol Hexyllactone Crosspolymer, Dimethicone, Polymethyl Methacrylate, Ethylhexylglycerin, Triethoxycaprylylsilane, Aluminum Hydroxide, Glycyrrhiza Glabra (Licorice) Root Extract, Methicone, Silicon Dioxide (Silica), Fragrance, Tocopheryl Acetate, Tocopherol.May Contain :CI 77491, CI 77492, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1631354809.png",
        "sub_category": "FACE",
        "product_name": "Refill Lightening Powder Foundation",
        "price": 36500,
        "about": "Say no more to unmatched shades!",
        "how_to": "Ulaskan pada wajah dengan cara tap-tap menggunakan sponge.",
        "ingredients": "Mica, Talc, Aluminum Starch Octenylsuccinate, Dimethicone, Titanium Dioxide, Diisostearyl Malate, Polymethyl Methacrylate, Dimethiconol Stearate, Triethoxycaprylylsilane, Phenoxyethanol, Silica, Ethylhexylglycerin, Hydrogen Dimethicone, Aluminum Hydroxide, Isopropyl Titanium Triisostearate, Methicone, Fragrance, Tocopheryl Acetate, Glycyrrhiza Glabra (Licorice) Root Extract, Tocopherol. May Contain: CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1631353806.png",
        "sub_category": "FACE",
        "product_name": "Refill Exclusive Two Way Cake",
        "price": 53500,
        "about": "Lustrous Matte & Velvety Texture. Perpaduan butiran velvet powder dan foundation SPF 15 yang memiliki Soft Focus Agent untuk menyamarkan garis halus dan kerutan, mampu menyerap minyak berlebih sehingga menghasilkan tampilan akhir matte. Wet Process Technology dapat menghasilkan tekstur partikel sangat halus untuk make-up ringan natural tetapi tetap cover sepanjang hari. Dilengkapi dengan Moisture Oleo Complex sebagai extra moisturizer dan antioksidan dalam menjaga kulit tetap sehat.",
        "how_to": "Gunakan Moisturizer dari Wardah Skin Care Series. Untuk tampilan lebih optimal gunakan terlebih dahulu Foundation, BB Cream atau DD Cream Aplikasikan secara merata pada wajah dan leher menggunakan spons.",
        "ingredients": "Mica, Talc, Titanium Dioxide, Zinc Myristate, Squalane, Dimethicone, Methyl Methacrylate Crosspolymer, PTFE, Silica, Polymethyl Methacrylate, HDI/Trimethylol Hexyllactone Crosspolymer, Dipentaerythrityl Hexahydroxystearate/Hexastearate/Hexarosinate, Dimethiconol Stearate, Hydrogen Dimethicone, C9-15 Fluoroalcohol Phosphate, Aluminum Hydroxide, Methicone, Quaternium-15, Macadamia Ternifolia Seed Oil, Fragrance, Tocopheryl Acetate, Glycine Soja (Soybean) Oil, Persea Gratissima (Avocado) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Bisabolol, Phenoxyethanol, Isobornyl Acetate, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Fucus Vesiculosus Extract, Triticum Vulgare (Wheat) Bran Extract, BHT, Linoleic Acid, Tocopherol, Triethoxycaprylysilane.May Contain: CI 77891, CI 77492, CI 77491, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1631353048.png",
        "sub_category": "FACE",
        "product_name": "Refill Exclusive Flawless Cover Cushion",
        "price": 90000,
        "about": "Cushion dengan hasil natural glow, full coverage finish yang tahan lama hingga 10 jam dan memiliki Non comedogenic formula yang membuat kulitmu cantik cerah bercahaya serta terlindungi dari paparan sinar matahari karena adanya SPF 30 PA+++",
        "how_to": "Gunakan dengan puff untuk hasil yang maksimal",
        "ingredients": "Aqua, Cyclopentasiloxane, Ethylhexyl Methoxycinnamate, Butylene Glycol, Polymethylsilsesquioxane, Isodecyl Neopentanoate, Lauryl PEG-9 Polydimethylsiloxyethyl Dimethicone, Titanium Dioxide, Triethoxycaprylylsilane, Octyldodecyl Stearoyl Stearate, PEG-10 Dimethicone, Zinc Oxide, Boron Nitride, Magnesium Sulfate, Phenoxyethanol, Propanediol, Ethylhexyl Palmitate, Polysorbate 80, Disteardimonium Hectorite, Polyhydroxystearic Acid, 1, 2-Hexanediol, Silica, Aluminum Hydroxide, Acrylates/Behenyl Acrylate/Dimethicone Methacrylate Copolymer, Acrylates/Ethylhexyl Acrylate/Dimethicone Methacrylate Copolymer, Macadamia Ternifolia Seed Oil, Persea Gratissima (Avocado) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Fucus Vesiculosus Extract, Triticum Vulgare (Wheat) Bran Extract, Glycine Soja (Soybean) Oil, Propylene Carbonate, BHT, Linoleic Acid, Disodium EDTA, Dimethicone, Cyclotetrasiloxane, Ethylhexylglycerin, Bisabolol, Tocopherol, Isobornyl Acetate.May Contain :CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-2-1648548121.webp",
        "sub_category": "FACE",
        "product_name": "Exclusive Glowing Highlighter",
        "price": 69500,
        "about": "Exclusive Glowing Highlighter merupakan highlighter yang memberikan efek glowing natural pada wajah dan tahan lama seharian. Memiliki tekstur yang creamy dengan partikel shimmer yang halus dan warna yang cocok di setiap warna kulit, memberikan efek highlight dimensi wajah yang tampak sempurna.",
        "how_to": "Gunakan highlighter di step akhir penggunaan make up. Bisa diaplikasikan pada bagian wajah berikut:, Tulang pipi, ujung & tulang hidung, dagu, tulang alis, cupid bow untuk membuat look glowing & wajah tampak berdimensi, bisa juga digunakan di area mata (sudut mata bagian dalam, tulang alis) untuk membuat mata tampak lebih menonjol, atau digunakan di kelopak mata sebagai pengganti eyeshadow, agar mata tampak lebih bersinar.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1624980314.png",
        "sub_category": "COLORFIT, FACE",
        "product_name": "Colorfit Velvet Powder Foundation Refill",
        "price": 43200,
        "about": "Wardah Colorfit Velvet Powder Foundation merupakan kombinasi foundation dan bedak yang terasa halus untuk memberikan coverage yang natural namun buildable (dapat diatur untuk medium hingga high coverage). Mampu memberikan finish yang dapat menyatu dengan baik wajah dan mampu menyamarkan pori serta menahan minyak secara tahan lama hingga 12 jam.",
        "how_to": "1. Aplikasikan bedak pada wajah dengan menggunakan spons, 2. Lipat spons menjadi dua bagian untuk meratakan powder foundation di daerah bawah mata",
        "ingredients": "Talc, Titanium Dioxide, Ethylhexyl Methoxycinnamate, Silica, Isopropyl Myristate, Nylon-12, Octyldodecanol, Dipentaerythrityl Hexahydroxystearate/Hexastearate/Hexarosinate, Phenoxyethanol, Triethoxycaprylylsilane, PCA Dimethicone, Aluminum Hydroxide, Dimethicone, HDI/Trimethylol Hexyllactone Crosspolymer, Hydrogen Dimethicone, Polymethyl Methacrylate, Ethylhexylglycerin, Methicone, Fragrance, Tocopheryl Acetate, Glycerin, Caprylic/Capric Triglyceride, Aqua, Centella Asiatica Extract, Tocopherol, Hydrogenated Lecithin, Cholesterol. May Contain: CI 77891, CI 77491, CI 77492, CI 77499, CI 77947."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1623141979.png",
        "sub_category": "LIPS",
        "product_name": "Lip Balm Picnic Limited Edition",
        "price": 18200,
        "about": "Wardah Lip Balm Picnic Limited Edition merupakan limited edition lip balm wardah yang mengandung Vit.E + UV Protection mampu membuat kulit bibir halus, lembut, tidak pecah-pecah. Dengan tekstur creamy, tidak lengkat, tidak membuat bibir terlihat berminyak. Aroma segar dan menenangkan membuat bibirmu tetap lembab selama 8 jam",
        "how_to": "Oleskan pada bibir sebelum menggunakan lip product untuk menjaga kelembapannya",
        "ingredients": "Petrolatum, Ethylhexyl Palmitate, Polyethylene, Bis-Diglyceryl Polyacyladipate-2, Ethylhexyl Methoxycinnamate, Crambe Abyssinica Seed Oil, Ozokerite, Olive (Olea Europaea) Oil, Shea Butter (Butyrospermum Parkii), Phenoxyethanol, Jojoba Esters, Fragrance, Simmondsia Chinensis (Jojoba) Seed Oil, Ethylhexylglycerin, Helianthus Annuus (Sunflower) Seed Wax, Allantoin, Tocopheryl Acetate, BHT, Butylene Glycol, Aloe Vera (Leaf) Extract, Soybean Oil, Vanillyl Butyl Ether, Aqua, Acacia Decurrens Flower Wax, Polyglycerin-3, Vitis Vinifera (Grape) Seed Extract, Tocopherol, CI 45410."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1618805575.png",
        "sub_category": "COLORFIT, FACE",
        "product_name": "Colorfit Mattifying Powder",
        "price": 76950,
        "about": "Wardah Colorfit Mattifying Powder merupakan bedak tabur dengan UV A/B Protection yang halus untuk wajah bebas kilap dan hasil akhir matte. Diformulasikan khusus dengan SkinMatch Technology untuk dapat menyatu sempurna dengan warna natural kulitmu dan memberikan efek oil control pada wajah.",
        "how_to": "1. Aplikasikan Wardah Colorfit Mattifying Powder pada wajah dengan menggunakan spons atau kuas, 2. Baurkan hingga merata dan sesuai dengan hasil aplikasi yang diinginkan",
        "ingredients": "Talc, Corn (Zea Mays) Starch, Zinc Oxide, Titanium Dioxide, Mica, Zinc Stearate, Phenoxyethanol, Dimethicone, Ethylhexylglycerin, Aluminum Hydroxide, Hydrogen Dimethicone, Fragrance, Glycerin, Caprylic/Capric Triglyceride, Aqua, Centella Asiatica Extract, Tocopherol, Hydrogenated Lecithin, Cholesterol. May Contain : CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1623034188.png",
        "sub_category": "COLORFIT, LIPS",
        "product_name": "Colorfit Last All Day Lip Paint",
        "price": 59670,
        "about": "Wardah Colorfit Last All Day Lip Paint adalah liquid lip dengan tekstur creamy yang mudah dibaurkan dan intense dalam satu usapan (cover in one stroke). Formulanya yang tidak transfer (transferproof) dan tahan lama (longlasting) hingga 12 jam sehingga nyaman digunakan seharian.",
        "how_to": "Aplikasikan lipstik pada bibir., Gunakan aplikator untuk merapikan pulasan lipstik hingga ke bagian ujung bibir dengan one swipe coverage, Gunakan hingga seluruh warna merata di bibir cantikmu.",
        "ingredients": "Isododecane, Bis-Hydroxylauryl Dimethicone/IPDI Copolymer, Cyclopentasiloxane, Trisiloxane, Trimethylsiloxysilicate, Diisostearyl Malate, Hydrated Silica, Silica Dimethyl Silylate, Disteardimonium Hectorite, Cyclohexasiloxane, Propylene Carbonate, Phenoxyethanol, Ethylhexylglycerin, Aluminum Hydroxide, Tocopheryl Acetate, Triethoxycaprylylsilane, Fragrance, Cyclotetrasiloxane, Tocopherol. May Contain :CI 77891, CI 77492, CI 15850:2, CI 15850:1, CI 77499, CI 77491, CI 15850, CI 42090."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1616379794.png",
        "sub_category": "LIPS",
        "product_name": "Colorfit Velvet Matte Lip Mouse - Womens Day Special Edition",
        "price": 0,
        "about": "Wardah Colorfit Velvet Matte Lip Mouse merupakan liquid lipstick dengan tekstur mousse yang nyaman dipakai di bibir. Diformulasikan khusus untuk membuat bibirmu nyaman menggunakannya, karena adanya kandungan: ",
        "how_to": "Gunakan Wardah Lipbalm atau Lipgloss sebelum menggunanakan lipstick yang bertujuan untuk melembabkan bibir., 1. Aplikasikan lipstik di bagian dalam bibir., 2. Gunakan ujung aplikator untuk merapikan pulasan lipstik hingga ke bagian ujung bibir.",
        "ingredients": "Cyclopentasiloxane, Dimethicone, Isododecane, Bis-Hydroxylauryl Dimethicone/IPDI Copolymer, Polyglyceryl-2 Triisostearate, Trimethylsiloxysilicate, Vinyl Dimethicone/Methicone Silsesquioxane Crosspolymer, Silica, Dimethicone/Vinyl Dimethicone Crosspolymer, Divinyldimethicone/Dimethicone Crosspolymer, Isohexadecane, Disteardimonium Hectorite, Propylene Carbonate, Phenoxyethanol, Ethylhexylglycerin, Methicone, Tocopheryl Acetate, Aluminum Hydroxide, Triethoxycaprylylsilane, Fragrance, Tocopherol.  May Contain :  CI 45410, CI 15850, CI 15850:1, CI 15850:2, CI 42090, CI 77491, CI 77492, CI 77499, CI 77891."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1616378606.png",
        "sub_category": "COLORFIT, LIPS",
        "product_name": "Colorfit Ultralight Matte Lipstick Korea Edition",
        "price": 39600,
        "about": "Wardah Colorft Ultralight Matte Lipstick Korea Edition adalah lipstik dengan tekstur powdery yang lembut dan sangat ringan sehingga nyaman dipakai di bibir, dengan warna baru yang terinspirasi dari destinasi wisata di Korea Selatan.",
        "how_to": "1. Ulaskan di bibir secara merata, 2. Ombre dengan warna Wardah Colorft Ultralight Matte Lipstick Korea Edition lainnya",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1602825810.png",
        "sub_category": "LIPS",
        "product_name": "Exclusive Matte Lip Cream X Ayang Cempaka",
        "price": 63000,
        "about": "Lip cream lembut dengan pilihan warna untuk bibir yang memukau. Dengan colorbinding pigments dan vitamin E, Wardah Exclusive Matte Lip Cream tidak membuat bibir kering dan nyaman dipakai sepanjang hari dan dapat bertahan 6 – 8 jam.\n\nKeunggulan produk ini adalah:\n1. Warna intens dalam satu olesan\n2. Mudah diaplikasikan dan diratakan\n3. Tekstur yang lembut, ringan, dan lembab\n4. Hasil matte dan tahan lama",
        "how_to": "Gunakan Wardah Lip Balm atau Lipgloss sebelum menggunakan lipstik yang bertujuan untuk melembapkan bibir.1. Aplikasikan lipstik di bagian dalam bibir2. Gunakan ujung aplikator untuk merapikan pulasan lipstik hingga ke bagian ujung bibir3. Gunakan hingga seluruh warna merata di bibir cantikmu",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1594712983.png",
        "sub_category": "EYE, FACE",
        "product_name": "Lightening Liquid Concealer",
        "price": 41000,
        "about": "Wardah Lightening Liquid Concealer adalah concealer dengan medium-to-high coverage untuk menutupi noda hitam dan bekas jerawat di wajah. Formula ringan dan nyaman untuk digunakan sehari-hari.",
        "how_to": "Titikkan Wardah Lightening Liquid Concealer secukupnya pada area yang diperlukan (bawah mata/ bekas jerawat)",
        "ingredients": "Aqua, Cyclopentasiloxane, Phenyl Trimethicone, Cyclohexasiloxane, Butylene Glycol, Triethylhexanoin, Cetyl PEG/PPG-10/1 Dimethicone, PEG-10 Dimethicone, Disteardimonium Hectorite, Magnesium Sulfate, Phenoxyethanol, Silica, Triethoxycaprylylsilane, Aluminum Hydroxide, Niacinamide, Dimethicone/Vinyl Dimethicone Crosspolymer, Ethylhexylglycerin, Isopropyl Titanium Triisostearate, Allantoin, Disodium EDTA. May Contain : CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1594712458.png",
        "sub_category": "FACE",
        "product_name": "Lightening Liquid Foundation",
        "price": 50500,
        "about": "Wardah Lightening Liquid Foundation adalah liquid foundation yang terasa ringan dan nyaman digunakan sehari-hari. Memilki coverage medium, mencerahkan, dan tahan lama hingga 12 jam.",
        "how_to": "1. Aplikasikan Wardah Lightening Liquid Foundation secukupnya pada wajah, 2. Ratakan ke seluruh wajah menggunakan tangan/brush/ sponge, 3. Wajah cerahmu siap untuk menjalani aktivitas",
        "ingredients": "Aqua, Cyclopentasiloxane, Dimethicone, Propanediol, Ethylhexyl Methoxycinnamate, Phenyl Trimethicone, Niacinamide, Polymethyl Methacrylate, Vinyl Dimethicone/Methicone Silsesquioxane Crosspolymer, Trehalose, PEG/PPG-18/18 Dimethicone, Magnesium Sulfate, Divinyldimethicone/Dimethicone Crosspolymer, Phenoxyethanol, Polyhydroxystearic Acid, Polymethylsilsesquioxane, Silica, Sorbitan Olivate, Tocopheryl Acetate, Aluminum Hydroxide, Hydrogen Dimethicone, Allantoin, Zinc Gluconate, Ethylhexylglycerin, Methicone, Disodium EDTA. May Contain :  CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-3-1656171860.webp",
        "sub_category": "FACE",
        "product_name": "Perfect Bright BB Powder",
        "price": 24300,
        "about": "Wardah Perfect Bright BB Powder dengan 7 Bright Mattifying Benefits merupakan bedak tabur yang ringan dan halus, memberikan tampilan instant whitening (cerah seketika) dengan hasil matte dan dapat membantu mengontrol minyak agar wajah bebas kilap hingga 8 jam.",
        "how_to": "1. Tuangkan bedak pada telapak tangan / sponge / brush, 2. Aplikasikan pada wajah hingga merata",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1586167758.png",
        "sub_category": "FACE",
        "product_name": "Lightening Powder Foundation Extra Cover",
        "price": 60000,
        "about": "Say no more to unmatched shades!",
        "how_to": "Ulaskan pada wajah dengan cara tap-tap menggunakan sponge.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1581664764.png",
        "sub_category": "LIPS",
        "product_name": "Colorfit Ultralight Matte Lipstick",
        "price": 39600,
        "about": "Wardah Colorfit Ultralight Matte Lipstick diformulasikan menggunakan teknologi color powder pigment sehingga menghasilkan hasil powdery matte yang ringan, halus, dan tetap menjaga kelembabab bibir karena diperkaya dengan vitamin E",
        "how_to": "Gunakan Wardah Lipbalm atau Lipgloss sebelum menggunanakan lipstick yang bertujuan untuk melembabkan bibir.",
        "ingredients": "Dimethicone, Isononyl Isononanoate, Ozokerite, Hydrogenated Polyisobutene, Dimethicone Crosspolymer, Hydrogenated Jojoba Oil, Phenyl Trimethicone, Bis-Diglyceryl Polyacyladipate-2, Isohexadecane, Silica, Tridecyl Trimellitate, Vinyl Dimethicone/Methicone Silsesquioxane Crosspolymer, Isostearyl Isostearate, Phenoxyethanol, Ethylhexylglycerin, BHT, Tocopheryl Acetate, Isopropyl Myristate, Fragrance, Isopropyl Titanium Triisostearate, Stearalkonium Hectorite, Propylene Carbonate, Polyhydroxystearic Acid, Tocopherol.  May Contain :  CI 77891, CI 77492, CI 77491, CI 15850, CI 15850:2, CI 77742, CI 15850:1, CI 77499, CI 77019."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575454967.png",
        "sub_category": "EYE",
        "product_name": "Eyeshadow EyeXpert Passionate",
        "price": 48500,
        "about": "Sapuan warna intens untuk menunjolkan keindahan mata. Dikombinaskan dalam tiga warna sempurna untuk membantu mengekspresikan bentuk terbaik dari matamu. Terbuat dari Microcoated Particle yang nyaman dan lembut saar diaplikasikan. Tersedia dalam 14 kombinasi warna yang sulit untuk dilewatkan ",
        "how_to": "1. Aplikasikan Wardah Eyeshadow favorite mu ke bagian kelopak mata mu.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575454850.png",
        "sub_category": "EYE",
        "product_name": "Eyeshadow EyeXpert Classic",
        "price": 48500,
        "about": "Sapuan warna intens untuk menunjolkan keindahan mata. Dikombinaskan dalam tiga warna sempurna untuk membantu mengekspresikan bentuk terbaik dari matamu. Terbuat dari Microcoated Particle yang nyaman dan lembut saar diaplikasikan. Tersedia dalam 14 kombinasi warna yang sulit untuk dilewatkan ",
        "how_to": "1. Aplikasikan Wardah Eyeshadow favorite mu ke bagian kelopak mata mu.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575450687.png",
        "sub_category": "EYE",
        "product_name": "Exclusive Eyeshadow Palette Sunset Brown",
        "price": 101500,
        "about": "Wardah Exclusive Eyeshadow Palette dengan formula intense color, smooth silky texture & blendable, dan longwearing membuat tampilan riasan mata semakin memukau. Eyeshadow yang tersedia dalam 2 varian warna yaitu 01 Sunset Brown dan 02 Rose Glow, yang memiliki formula khusus :",
        "how_to": "Aplikasikan produk pada kelopak mata dengan menggunakan tap brush., Ratakan produk dengan menggunakan blendable brush.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575450462.png",
        "sub_category": "EYE",
        "product_name": "Exclusive Eyeshadow Palette Rose Gold",
        "price": 101500,
        "about": "Wardah Exclusive Eyeshadow Palette dengan formula intense color, smooth silky texture & blendable, dan longwearing membuat tampilan riasan mata semakin memukau. Eyeshadow yang tersedia dalam 2 varian warna yaitu 01 Sunset Brown dan 02 Rose Glow, yang memiliki formula khusus :",
        "how_to": "Aplikasikan produk pada kelopak mata dengan menggunakan tap brush., Ratakan produk dengan menggunakan blendable brush.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575448722.png",
        "sub_category": "FACE",
        "product_name": "Blush On D",
        "price": 46000,
        "about": "The Perfect Blush is what you need. Kombinasi dua pigmen warna pilihan yang memiliki kandungan Microcoated Particle membuat pipi merona sempurna dan lebih berseri. Tersedia dalam 4 kombinasi warna yang cantik dan natural sehingga cocok untuk semua warna kulit.",
        "how_to": "1. Gunakan brush yang tersedia untuk aplikasi pada wajah.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575448691.png",
        "sub_category": "FACE",
        "product_name": "Blush On C",
        "price": 46000,
        "about": "The Perfect Blush is what you need. Kombinasi dua pigmen warna pilihan yang memiliki kandungan Microcoated Particle membuat pipi merona sempurna dan lebih berseri. Tersedia dalam 4 kombinasi warna yang cantik dan natural sehingga cocok untuk semua warna kulit.",
        "how_to": "1. Gunakan brush yang tersedia untuk aplikasi pada wajah.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575448643.png",
        "sub_category": "FACE",
        "product_name": "Blush On B",
        "price": 46000,
        "about": "The Perfect Blush is what you need. Kombinasi dua pigmen warna pilihan yang memiliki kandungan Microcoated Particle membuat pipi merona sempurna dan lebih berseri. Tersedia dalam 4 kombinasi warna yang cantik dan natural sehingga cocok untuk semua warna kulit.",
        "how_to": "1. Gunakan brush yang tersedia untuk aplikasi pada wajah.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575448614.png",
        "sub_category": "FACE",
        "product_name": "Blush On A",
        "price": 46000,
        "about": "The Perfect Blush is what you need. Kombinasi dua pigmen warna pilihan yang memiliki kandungan Microcoated Particle membuat pipi merona sempurna dan lebih berseri. Tersedia dalam 4 kombinasi warna yang cantik dan natural sehingga cocok untuk semua warna kulit.",
        "how_to": "1. Gunakan brush yang tersedia untuk aplikasi pada wajah.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-1573557775.png",
        "sub_category": "EYE",
        "product_name": "EyeXpert Perfect Curl Mascara",
        "price": 67500,
        "about": "Dengan Curl Lock Power untuk bulu mata yang lebih tebal, panjang, dan lentik sempurna sepanjang hari serta Argan Oil untuk nutrisi bulu mata.",
        "how_to": "Apply the product to your eyelashes.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1586778880.png",
        "sub_category": "FACE",
        "product_name": "Lightening Powder Foundation",
        "price": 54000,
        "about": "Say no more to unmatched shades! Formulated with Microbright Formula, UV Protection and 12-Hour-Long-Lasting Formula, this is what you need for! Available in 7 shades.",
        "how_to": "Apply the product evenly by tapping using the sponge.",
        "ingredients": "Mica, Talc, Aluminum Starch Octenylsuccinate, Dimethicone, Titanium Dioxide, Diisostearyl Malate, Polymethyl Methacrylate, Dimethiconol Stearate, Triethoxycaprylylsilane, Phenoxyethanol, Silica, Ethylhexylglycerin, Hydrogen Dimethicone, Aluminum Hydroxide, Isopropyl Titanium Triisostearate, Methicone, Fragrance, Tocopheryl Acetate, Glycyrrhiza Glabra (Licorice) Root Extract, Tocopherol. May Contain: CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1581667813.png",
        "sub_category": "LIPS",
        "product_name": "Everyday Moisture Lip Nutrition",
        "price": 27500,
        "about": "Membuat kulit bibir halus, lembut, tidak pecah-pecah. Dengan tekstur creamy, tidak lengket, dan tidak membuat bibir berminyak serta membuat bibi lembab selama 12 jam.",
        "how_to": "Olesakn pada bibirmu untuk menjaga kelembapannya",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1581667553.png",
        "sub_category": "LIPS",
        "product_name": "Everyday Fruity Sheer Lip Balm",
        "price": 26000,
        "about": "Lip balm yang membuat kulit bibir halus, lembut, tidak pecah-pecah. dengan tekstur creamy, tidak lengkat, tidak membuat bibir terlihat berminyal. Aroma segar dan menenangkan membuat bibirmu tetap lembab selama 8 jam.",
        "how_to": "oleskan pada bibir untuk menjaga kelembapannya.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573545862.png",
        "sub_category": "FACE",
        "product_name": "Exclusive Flawless Cover Cushion",
        "price": 126900,
        "about": "Cushion dengan hasil natural glow, full coverage finish yang tahan lama hingga 10 jam dan memiliki Non comedogenic formula yang membuat kulitmu cantik cerah bercahaya serta terlindungi dari paparan sinar matahari karena adanya SPF 30 PA+++",
        "how_to": "Gunakan dengan puff untuk hasil yang maksimal",
        "ingredients": "Aqua, Cyclopentasiloxane, Ethylhexyl Methoxycinnamate, Butylene Glycol, Polymethylsilsesquioxane, Isodecyl Neopentanoate, Lauryl PEG-9 Polydimethylsiloxyethyl Dimethicone, Titanium Dioxide, Triethoxycaprylylsilane, Octyldodecyl Stearoyl Stearate, PEG-10 Dimethicone, Zinc Oxide, Boron Nitride, Magnesium Sulfate, Phenoxyethanol, Propanediol, Ethylhexyl Palmitate, Polysorbate 80, Disteardimonium Hectorite, Polyhydroxystearic Acid, 1, 2-Hexanediol, Silica, Aluminum Hydroxide, Acrylates/Behenyl Acrylate/Dimethicone Methacrylate Copolymer, Acrylates/Ethylhexyl Acrylate/Dimethicone Methacrylate Copolymer, Macadamia Ternifolia Seed Oil, Persea Gratissima (Avocado) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Fucus Vesiculosus Extract, Triticum Vulgare (Wheat) Bran Extract, Glycine Soja (Soybean) Oil, Propylene Carbonate, BHT, Linoleic Acid, Disodium EDTA, Dimethicone, Cyclotetrasiloxane, Ethylhexylglycerin, Bisabolol, Tocopherol, Isobornyl Acetate.  May Contain :  CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-1573146149.png",
        "sub_category": "EYE",
        "product_name": "EyeXpert the Volume Expert Mascara",
        "price": 78000,
        "about": "Jalani hari dengan lebih extra bersama Wardah Volume Expert Mascara! Dengan aplikasi Lash Precision Brush untuk bulu mata extra tebal, extra lentik yang menjangkau hingga sudut mata terdalam. Mengandung Intensified Waterproof Pigments untuk tatapan intens tanpa meninggalkan jejak pada kantong mata. Kilap dan kekuatan bulu mata tetap terjaga berkat nutrisi dari WideLashTM dan Argan Oil.",
        "how_to": "Aplikasikan pada bulu mata mulai dari pangkal hingga ujungnya dalam gerakan zigzag mengarah luar mata.",
        "ingredients": "Isododecane, Cyclopentasiloxane, Microcrystalline Wax, Disteardimonium Hectorite, Oryza Sativa Cera, Euphorbia Cerifera (Candelilla) Wax, Cyclohexasiloxane, Trimethylsiloxysilicate, Acrylates/Polytrimethyl Siloxymethacrylate Copolymer, Propylene Carbonate, Dextrin Palmitate, Phenyl Trimethicone, Aqua, Talc, Argania Spinosa Kernel Oil, Butylene Glycol, Silica, Phenoxyethanol, Glycerin, Polyglyceryl-4 Isostearate, Cetyl PEG/PPG-10/1 Dimethicone, Hexyl Laurate, Tocopheryl Acetate, Triethylene Glycol, Panthenol, Biotinoyl Tripeptide-1, CI 77499, CI 77266."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-1573147109.png",
        "sub_category": "EYE",
        "product_name": "Eye and Lip Make Up Remover",
        "price": 42000,
        "about": "Excellently Clean & Gentle on Eyes. Pembersih khusus eye and lip yang diformulasikan dengan Dual Action Formula & One Wipe Cleansing Power untuk pembersihan secara cepat sekaligus terasa lembut di mata dan bibir tanpa meninggalkan rasa berminyak. Formula alcohol-free sehingga nyaman digunakan dan tidak membuat kulit kering.",
        "how_to": "1. Kocok terlebih dahulu dan tuangkan secukupnya pada kapas., 2. Mulailah dari mata. Pejamkan mata dan tempelkan kapas pada kelopak mata., 3. Diamkan selama 10-20 detik., 4. Usap perlahan ke arah bawh untuk mengangkat sisa make up hingga bersih, 5. Lanjutkan ke bagian bibir dengan cara yang sama.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-2-1615980662.jpg",
        "sub_category": "EYE",
        "product_name": "Eyebrow Kit",
        "price": 64500,
        "about": "All in one kit for your defined eyebrow. Terdiri dari dua warna eyebrow powder yang dapat dikombinasikan sesuai keinginan, juga concelear multi-fungsi yang dapat menyamarkan rambut halus di alis dan mempertegas bentuk alis, dilengkapi dengan mini angled brush untuk aplikasi yang persisi dan mini spoolie brush untuk merapikan rambut alis.",
        "how_to": "1. Bingkai alis dengan eyebrom powder menggunakan mini angled brush, 2. Warnai alis dengan eyebrow powder sesuai keinginan, 3. Sisir alis dengan mini spoolie brush, 4. Oleskan concealer di sekeliling alis dengan jari untuk mempertegas bentuk alis.",
        "ingredients": "WARDAH Eyexpert Eyebrow (Concealer) : Aluminum Starch Octenylsuccinate, Mineral Oil (Paraffinum Liquidum), Paraffin Wax, Diisostearyl Malate, Microcrystalline Wax, Shea Butter (Butyrospermum Parkii), Beeswax, Isopropyl Myristate, Isopropyl Titanium Triisostearate, BHT, Propylparaben, Fragrance, Aluminum Hydroxide, Hydrogen Dimethicone, Methicone, CI 77891, CI 77492, CI 77491, CI 77499. WARDAH Eyexpert Eyebrow : Mica, Talc, Aluminum Starch Octenylsuccinate, Polyethylene, Polymethyl Methacrylate, Tricaprylin, Zinc Stearate, Triethoxycaprylylsilane, Phenoxyethanol, Hydrogen Dimethicone, Isopropyl Titanium Triisostearate, Methicone, Aluminum HydroxideMay Contain :CI 77491, CI 77492, CI 77499, CI 77891, CI 77266, CI 42090."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573542429.png",
        "sub_category": "EYE",
        "product_name": "Eyeliner Pencil",
        "price": 43000,
        "about": "Wardah Eyeliner Pencil diformulasikan khusus untuk kemudahan aplikasi dan presisi. Mempertegas garis mata secara praktis dan lembut dengan hasil yang natural.",
        "how_to": "Aplikasikan dari arah dalam ke luar eyeliner dengan satu tarikan garis untuk hasil sempurna., Tips :, Gunakan Light Concealer pada Wardah Double Kit Function setelah menggunakan Eye Brow yang berfungsi sebagai highlighter di sekitar alis (menegaskan hasil alis yang telah dibuat).",
        "ingredients": "Mica, Caprylic/Capric Triglyceride, Stearyl Dimethicone, Hydrogenated Palm Glycerides, Polyglyceryl-3 Methylglucose, Distearate, Cera Microcristallina, Octadecene, Synthetic Wax, Kaolin, Polyethylene, Tocopherol, Methylparaben, Propylparaben, Talc, Ascorbyl Palmitate. May Contain :CI 77499, CI 77891, CI 77007"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1636515308.png",
        "sub_category": "EYE",
        "product_name": "Eyexpert Eyebrow Pencil Brown",
        "price": 34200,
        "about": "Kelembutan dan kemudahan aplikasi pensil eyebrow untuk mempertegas alis mata secara praktis dengan hasil yang natural. Dilengkapi dengan brow brush untuk menyisir alis dan membaurkan warna sehingga didapatkan hasil yang natural. Tersedia dalam 2 varian yang bisa disesuaikan dengan warna alis mata.",
        "how_to": "1. Rapikan alis dengan brow brush., 2. Goreskan perlahan Eyebrow mulai dari tengah alis ke ujung belakang., 3. Isi bagian dalam alis, 4. Ratakan warna ke depan dengan brow brush sampai terbentuk alis yang sempurna.",
        "ingredients": "Stearic Acid, Synthetic Japan Wax, Hydrogenated Microcrystalline Cera, Polybutene, Ceresin, Talc, Hydrogenated Castor Oil, Cera Microcristallina, Silica, Tocopherol, Ascorbyl Palmitate, BHT. May contain: CI 77499, CI 77491, CI 77492."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573543134.png",
        "sub_category": "FACE",
        "product_name": "Luminous Compact Powder",
        "price": 44000,
        "about": "Silky Texture for Luminous Skin Finish. Bedak padat yang memiliki kandungan Micro Coated Particle alami menghasilkan make-up halus dan natural. Ringan dan nyaman digunakan sepanjang hari. Dapat digunakan dengan atau tanpa foundation.",
        "how_to": "Aplikasikan secara merata pada wajah dan leher menggunakan spons.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575373206.png",
        "sub_category": "FACE",
        "product_name": "Lightening Matte Powder",
        "price": 34500,
        "about": "Inovasi Skin Lightening System Microbright Formula dan Oil Contorl Agent. Bedak tabur ringan dengan Microbroght Formula yang membantu mencerahkan serta membuat kulit merasa lebih halus.",
        "how_to": "Tepukkan bedak pada wajah dengan menggunakan spons dan kuas.",
        "ingredients": "Talc, Corn Starch, Zinc Oxide, Zinc Stearate, Titanium Dioxide, Phenoxyethanol, Dimethicone, Ethylhexylglycerin, Aluminum Hydroxide, Hydrogen Dimethicone, Fragrance, Tocopherol, Glycyrrhiza Glabra (Licorice) Root Extract. May Contain : CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1575284269.png",
        "sub_category": "FACE",
        "product_name": "Lightening BB Cake Powder",
        "price": 59500,
        "about": "Katakan bye-bye pada kilap berlebih wajahmu dan sapa rona cerahmu dengan Wardah Lightening BB Cake Powder! Bedak padat SPF 15 PA++ dengan Oil-Balancing Beads dan Lightfilter Fillers yang meKatakan bye-bye pada kilap berlebih wajahmu dan sapa rona cerahmu dengan Wardah Lightening BB Cake Powder! Bedak padat SPF 15 PA++ dengan Oil-Balancing Beads dan Lightfilter Fillers yang membuat kulit wajah normal-berminyak tampak bebas kilap, matte, cerah sepanjang hari. Diperkaya dengan Licorice Extract dan Vitamin B3 yang dikenal membantu proses pencerahan kulit wajah natural. Tersedia dalam 3 varian warna Sheer Pink, Light Beige, dan Ivory yang pas untuk setiap rona kulit beauty believer di dalam dirimu! Buat kulit wajah normal-berminyak tampak bebas kilap, matte, cerah sepanjang hari. Diperkaya dengan Licorice Extract dan Vitamin B3 yang dikenal membantu proses pencerahan kulit wajah natural.",
        "how_to": "Usapkan lembut pada seluruh wajah, terutama T-Zone setelah menggunakan Wardah Lightening BB Cream.",
        "ingredients": "Talc, Titanium Dioxide, Ethylhexyl Methoxycinnamate, Silica, Isopropyl Myristate, Nylon-12, Octyldodecanol, Dipentaerythrityl Hexahydroxystearate/Hexastearate/Hexarosinate, Zinc Oxide, PCA Dimethicone, Phenoxyethanol, Hydrogen Dimethicone, HDI/Trimethylol Hexyllactone Crosspolymer, Dimethicone, Polymethyl Methacrylate, Ethylhexylglycerin, Triethoxycaprylylsilane, Aluminum Hydroxide, Glycyrrhiza Glabra (Licorice) Root Extract, Methicone, Silicon Dioxide (Silica), Fragrance, Tocopheryl Acetate, Tocopherol.May Contain :CI 77491, CI 77492, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573543019.png",
        "sub_category": "FACE",
        "product_name": "Luminous TWC",
        "price": 50500,
        "about": "Silky Texture for Luminous Skin Finish. Perpaduan bedak dan foundation diformulasikan dengan Micro Coated Particle meratakan dan menyamarkan noda di wajah. Tekstur lembut dan ringan menghasilkan warna kulit lebih merata, tampak alami, dan bebas kilap. Dilengkapi dengan Vitamin E sebagai moisturizer dan antioksidan.",
        "how_to": "Aplikasikan secara merata pada wajah dan leher menggunakan spons.",
        "ingredients": "Talc, Mica, Polymethyl Methacrylate, Diisostearyl Malate, Dimethicone, Nylon-12, Squalane, Dimethiconol Stearate, Silica, Hydrogen Dimethicone, Quaternium-15, Fragrance, Methicone, Tocopheryl Acetate, Aluminum Hydroxide, Methicone May contain: CI 77891, CI 77492, CI 77491, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573543540.png",
        "sub_category": "FACE",
        "product_name": "Luminous Face Powder",
        "price": 43000,
        "about": "Silky Texture for Luminous Skin Finish. Face Powder non-comedogenic yang ringan mengandung Micro Coated Particle sehingga membuat tata rias lebih tahan lama natural di kulit wajah dengan hasil akhir matte. Berperan sebagai oil control dalam menyerap minyak berlebih. Dapat digunakan dengan atau tanpa foundation, dan juga sebagai sentuhan akhir make-up.",
        "how_to": "Aplikasikan secara merata pada wajah dan leher menggunakan spons.",
        "ingredients": "Talc, Mica, Kaolin, Corn (Zea Mays) Starch, Zinc Stearate, Silica, Isopropyl Myristate, Hydrogen Dimethicone, Quaternium-15, Methicone, Fragrance, Aluminum Hydroxide May contain: CI 77891, CI 77492, CI 77491, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1629426670.png",
        "sub_category": "FACE",
        "product_name": "Luminous Liquid Foundation",
        "price": 40000,
        "about": "Even out skin tone & Covers Imperfections. Liquid Foundation dengan tekstur ringan diformulasikan untuk membantu menyamarkan warna kulit tidak merata dan melindungi dari pengaruh buruk sinar matahari. Tidak lengket dan nyaman digunakan setiap hari.",
        "how_to": "1. Oleskan tipis merata ke arah bawah searah bulu halus di wajah, 2. Gunakan kuas khusus foundation atau langsung dengan jari tangan, 3. Aplikasikan ke seluruh wajah, dimulai dari dahi, pipi, dan diakhiri pada bagian dagu., Tips :, Bagi kulit kering, gunakan Moisturizer dari Wardah Skin Care Series terlebih dahulu. Setelah pemakaian Foundation, gunakan Wardah Powder untuk hasil akhir optimal matte-finish.",
        "ingredients": "Aqua, Dimethicone, Cyclotetrasiloxane, Cyclopentasiloxane, Glycerin, Octamethylcyclotetrasiloxane, Mica, PEG/PPG-20/15, Polymethyl Methacrylate, Sodium Chloride, Decamethylcyclopentasiloxane, Sorbitan Oleate, Dimethicone Crosspolymer, Fragrance, Methylparaben, Propylparaben, Hydrogen Dimethicone, Dimethicone/Vinyl Dimethicone Crosspolymer, Dimethiconol, Aluminum Hydroxide, Methicone. May Contain :CI 77891, CI 77492, CI 77491, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1583803517.png",
        "sub_category": "FACE",
        "product_name": "Luminous  Creamy Foundation",
        "price": 38000,
        "about": "Smooth and Light Feel, Looks Like Second Skin. Creamy Foundation Light Feel dengan tekstur ringan, lembut. dan membuat make-up natural tahan lama. Memiliki kandungan untuk menyamarkan noda hitam dan bekas jerawat. Tidak membuat kulit mengkilap dan mudah luntur. Cocok untuk digunakan pada hari spesial-mu!",
        "how_to": "1. Oleskan tipis merata ke arah bawah searah bulu halus di wajah, 2. Gunakan kuas khusus foundation atau langsung dengan jari tangan, 3. Aplikasikan ke seluruh wajah, dimulai dari dahi, pipi, dan diakhiri pada bagian dagu., Tips :, Bagi kulit kering, gunakan Moisturizer dari Wardah Skin Care Series terlebih dahulu. Setelah pemakaian Foundation, gunakan Wardah Powder untuk hasil akhir optimal matte-finish.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://www.wardahbeauty.com/assets/images/dummy.png",
        "sub_category": "WISUDA UI 2021, FACE",
        "product_name": "Double Function Kit",
        "price": 53500,
        "about": "2+1 Flawless Action. Paduan dua warna concealer membantu menyamarkan jerawat, flek, dan kantung mata serta dapat digunakan sebagai highlighter pada daerah mata dan shading wajah untuk penampilan yang sempurna. Dilengkapi dengan eye shadow base untuk tata rias mata yang tahan lama. Tersedia dalam kemasan praktis dan travel-friendly.",
        "how_to": "1. Pertama, oleskan Dark Concealer pada jerawat/flek/kantung mata sebelum menyapukan bedak., 2. Oleskan pula Eyeshadow Base pada kelopak mata sebelum mengulaskan perona mata., 3. Oleskan Light Concealer disekitar mata dan alis setelah menggunakan perona mata dan pewarna alis., 4. Setelah aplikasi, bersihkan kelebihan powder pada aplikator dengan menggunakan tissue., 5. Bisa juga dibersihkan berkala dengan menggunakan kapas yang sudah dibasahi dengan Wardah Make-Up Remover. Hal ini dilakukan untuk menghindari penumpukkan powder pada aplikator., Tips :, Gunakan Wardah Powder setelah menutupi noda atau flek pada wajah dengan Dark Concealer. Gunakan Wardah Eye Shadow setelah menggunakan Eyeshadow Base. Gunakan Wardah Eye Brow, Maskara, dan/atau Eyeshadow sebelum menggunakan Light Concealer yang berfungsi sebagai highlighter.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1583741266.png",
        "sub_category": "FACE",
        "product_name": "BB Cream Every Day",
        "price": 29000,
        "about": "Water Break Technology dapat melepaskan bulir-bulir air yang memberikan kesegaran dan efek lembab seketika. Membantu menyamarkan ketidaksempurnaan, warna kulit tidak merata, dan membuat kulit terlihat lebih halus. Kandungan Aloe Vera Extract & Bio-Hyaluronic Acid dapat menutrisi kulit tetap sehat. Kombinasi Witch Hazel extract & Zinc Gluconate berfungsi sebagai oil control, membantu meringkas pori-pori, dan mengatur produksi sebum sehingga kulit tampak bebas kilap lebih lama. Sangat cocok untukmu yang beraktivitas tinggi!",
        "how_to": "Bagi kulit kering, sebaiknya menggunakan Moisturizer Wardah Skin Care Series yang disesuaikan dengan masalah kulit sebelum menggunakan BB cream. Gunakan Wardah Powder setelah pemakaian BB cream untuk hasil optimal matte-finish., 1. Oleskan tipis merata ke arah bawah searah bulu halus di wajah, 2. Gunakan kuas khusus foundation atau langsung dengan jari tangan, 3. Aplikasikan ke seluruh wajah, dimulai dari dahi, pipi, dan diakhiri pada bagian dagu.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573051378.png",
        "sub_category": "WISUDA UI 2021, FACE",
        "product_name": "Exclusive Creamy Foundation",
        "price": 96500,
        "about": "Precious Satin Finish & Long Wearing Coverage. Creamy Foundation dengan tampilan satin yang dapat menutupi ketidaksempurnaan kulit, memberikan daya cover maksimal, dan meratakan warna kulit. Diformulasikan dengan Titanium Dioxide sebagai UV Protection. Kulit wajah tampak lebih halus, lembut, dan lembab menghasilkan riasan yang menempel menawan dan tahan lama.",
        "how_to": "1. Oleskan tipis merata ke arah bawah searah bulu halus di wajah, 2. Gunakan kuas khusus foundation atau langsung dengan jari tangan, 3. Aplikasikan ke seluruh wajah, dimulai dari dahi, pipi, dan diakhiri pada bagian dagu., Tips:, Bagi kulit kering, gunakan Moisturizer dari Wardah Skin Care Series terlebih dahulu. Setelah pemakaian Foundation, gunakan Wardah Powder untuk hasil akhir optimal matte-finish.",
        "ingredients": "Dimethicone, Caprylic/Capric Triglyceride, Ethylhexyl Methoxycinnamate, Hydrogenated Polyisobutene, Polymethyl Methacrylate, Mica, Squalane, HDI/Trimethylol Hexyllactone Crosspolymer, Hydrogenated Polycyclopentadiene, Beeswax, Microcrystalline Wax, Methyl Methacrylate Crosspolymer, Nylon-12, Silica, Candelilla (Euphorbia Cerifera) Wax, Paraffin Wax, Stearic Acid, 4-Methylbenzylidene Camphor, Dimethicone/Vinyl Dimethicone Crosspolymer, Isododecane, Cetearyl Dimethicone Crosspolymer, Aluminum Hydroxide, Butyl Methoxydibenzoylmethane, Triethoxycaprylylsilane, Methicone, BHT, Hydrogen Dimethicone, Methylparaben, Propylparaben, Tocopheryl Acetate, Macadamia Ternifolia Seed Oil, Phenoxyethanol, Fragrance, Glycine Soja (Soybean) Oil, Persea Gratissima (Avocado) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Bisabolol, Isobornyl Acetate, Triticum Vulgare (Wheat) Bran Extract, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Fucus Vesiculosus Extract, Linoleic Acid, TocopherolMay contain:CI 77891, CI 77492, CI 77491, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573544024.png",
        "sub_category": "FACE",
        "product_name": "Luminous  Creamy Foundation Extra Cover",
        "price": 40000,
        "about": "Smooth and Light Feel, Looks Like Second Skin. Creamy Foundation Extra Cover dengan tekstur ringan, lembut. dan membuat make-up extra cover tahan lama. Memiliki kandungan untuk menyamarkan noda hitam dan bekas jerawat. Tidak membuat kulit mengkilap dan mudah luntur. Cocok untuk digunakan pada hari spesial-mu!",
        "how_to": "1.. Oleskan tipis merata ke arah bawah searah bulu halus di wajah, 2. Gunakan kuas khusus foundation atau langsung dengan jari tangan, 3. Aplikasikan ke seluruh wajah, dimulai dari dahi, pipi, dan diakhiri pada bagian dagu., Tips :, Bagi kulit kering, gunakan Moisturizer dari Wardah Skin Care Series terlebih dahulu. Setelah pemakaian Foundation, gunakan Wardah Powder untuk hasil akhir optimal matte-finish.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1628842747.png",
        "sub_category": "WISUDA UI 2021, FACE",
        "product_name": "Exclusive Liquid Foundation",
        "price": 75150,
        "about": "Ultimate Natural Look & Dewy Feel. Liquid Foundation SPF 30 memiliki tekstur ringan, powdery matte, dan memiliki Soft Focus Agent untuk menyamarkan garis halus dan kerutan. Wet Process Technology dapat menghasilkan tekstur partikel sangat halus untuk make-up ringan natural tetapi tetap cover sepanjang hari.",
        "how_to": "Bagi kulit kering, gunakan Moisturizer dari Wardah Skin Care Series terlebih dahulu. Setelah pemakaian Foundation, gunakan Wardah Powder untuk hasil akhir optimal matte-finish., 1. Oleskan tipis merata ke arah bawah searah bulu halus di wajah, 2. Gunakan kuas khusus foundation atau langsung dengan jari tangan, 3. Aplikasikan ke seluruh wajah, dimulai dari dahi, pipi, dan diakhiri pada bagian dagu.",
        "ingredients": "Aqua, Cyclopentasiloxane, Cyclotetrasiloxane, Butylene Glycol, Ethylhexyl Methoxycinnamate, Mica, Dimethicone, Phenyl Trimethicone, Polymethyl Methacrylate, Aluminum Starch Octenylsuccinate, HDI/Trimethylol Hexyllactone Crosspolymer, PEG/PPG-20/15 Dimethicone, 4-Methylbenzylidene Camphor, Potassium Cetyl Phosphate, Sodium Chloride, Squalane, Phenoxyethanol, Silica, Sorbitan Oleate, Butyl Methoxydibenzoylmethane, Dimethicone/Vinyl Dimethicone Crosspolymer, Dimethicone Crosspolymer, Triethoxycaprylylsilane, Ethylhexylglycerin, Macadamia Ternifolia Seed Oil, Propylene Glycol, Xanthan Gum, Isopropyl Titanium Triisostearate, Pearl Extract, Dimethiconol, BHT, Tocopheryl Acetate, Glycine Soja (Soybean) Oil, Persea Gratissima (Avocado) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Bisabolol, Isobornyl Acetate, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Fucus Vesiculosus Extract, Triticum Vulgare (Wheat) Bran Extract, Linoleic Acid, Tocopherol, Aluminum Hydroxide, Hydrogen Dimethicone.  May Contain:  CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1573544482.png",
        "sub_category": "WISUDA UI 2021, FACE",
        "product_name": "Exclusive Two Way Cake",
        "price": 92500,
        "about": "Lustrous Matte & Velvety Texture. Perpaduan butiran velvet powder dan foundation SPF 15 yang memiliki Soft Focus Agent untuk menyamarkan garis halus dan kerutan, mampu menyerap minyak berlebih sehingga menghasilkan tampilan akhir matte. Wet Process Technology dapat menghasilkan tekstur partikel sangat halus untuk make-up ringan natural tetapi tetap cover sepanjang hari. Dilengkapi dengan Moisture Oleo Complex sebagai extra moisturizer dan antioksidan dalam menjaga kulit tetap sehat.",
        "how_to": "Gunakan Moisturizer dari Wardah Skin Care Series. Untuk tampilan lebih optimal gunakan terlebih dahulu Foundation, BB Cream atau DD Cream Aplikasikan secara merata pada wajah dan leher menggunakan spons.",
        "ingredients": "Mica, Talc, Titanium Dioxide, Zinc Myristate, Squalane, Dimethicone, Methyl Methacrylate Crosspolymer, PTFE, Silica, Polymethyl Methacrylate, HDI/Trimethylol Hexyllactone Crosspolymer, Dipentaerythrityl Hexahydroxystearate/Hexastearate/Hexarosinate, Dimethiconol Stearate, Hydrogen Dimethicone, C9-15 Fluoroalcohol Phosphate, Aluminum Hydroxide, Methicone, Quaternium-15, Macadamia Ternifolia Seed Oil, Fragrance, Tocopheryl Acetate, Glycine Soja (Soybean) Oil, Persea Gratissima (Avocado) Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Bisabolol, Phenoxyethanol, Isobornyl Acetate, Calendula Officinalis Flower Extract, Chamomilla Recutita (Matricaria) Flower Extract, Fucus Vesiculosus Extract, Triticum Vulgare (Wheat) Bran Extract, BHT, Linoleic Acid, Tocopherol, Triethoxycaprylysilane.May Contain: CI 77891, CI 77492, CI 77491, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-1573146097.png",
        "sub_category": "EYE",
        "product_name": "Aqualash Mascara",
        "price": 50500,
        "about": "Untuk Tampilan Sempurnamu, Setiap Hari! Water-Based Technology & Fiber memberikan kemudahan dalam mengaplikasikan mascara membuat bulu mata lebih tebal dan panjang. Kandungan Vitamin E untuk perlindungan dan nutrisi bulu mata setiap harinya.",
        "how_to": "1. Aplikasikan maskara dengan mengarahkan bagian cekung sikat ke bawah dan gerakkan secara zig-zag pada bulu mata dari akar hingga ujung., 2. Balikkan arah sikat hingga cekungan berada di bagian atas, ulangi gerakan zig zag untuk merapikan dan mengangkat bulu mata sehingga terlihat lentik dan tanpa gumpalan., 3. Ulangi beberapa kali untuk mendapatkan hasil bulu mata yang panjang, tebal, dan lentik optimal., Tips :, Sebaiknya penggunaan Eyeliner dilakukan setelah penggunaan Wardah Eyeshadow dan Eyeliner. Gunakan Wardah Eye and Lip Make-Up Remover ketika akan membersihkan bagian mata dari Eyeliner.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1583801720.png",
        "sub_category": "FACE",
        "product_name": "Lightening BB Cream",
        "price": 33500,
        "about": "A True Multitastker with SPF 32 PA+++",
        "how_to": "1. Oleskan tipis merata ke arah bawah searah bulu halus di wajah, 2. Gunakan kuas khusus foundation atau langsung dengan jari tangan, 3. Aplikasikan ke seluruh wajah, dimulai dari dahi, pipi, dan diakhiri pada bagian dagu.",
        "ingredients": "Aqua, Cyclopentasiloxane, Ethylhexyl Methoxycinnamate, Butylene Glycol, Dimethicone, Isododecane, Niacinamide, Dimethicone Crosspolymer, Stearic Acid, Caprylyl Methicone, Cyclomethicone, Ethylhexyl Palmitate, Polyglyceryl-4-Isostearate, Aloe Barbadensis (Aloe Vera) Leaf Extract, Sodium Chloride, Triethylhexanoin, Zinc Oxide, Disteardimonium Hectorite, Cetyl PEG/PPG 10/1 Dimethicone, Hexyl Laurate, Silica, Phenoxyethanol, Dimethicone/Vinyl Dimethicone Crosspolymer, Sorbitan Olivate, Propylene Carbonate, Titanium Dioxide, Nylon-12, Tocopheryl Acetate, Glycerin, Allantoin, Triethoxycaprylylsilane, Ethylhexylglycerin, Ascorbyl Tetraisopalmitate, Disodium EDTA, Sodium Hyaluronate, Glycyrrhiza Glabra (Licorice) Root Extract, Carbomer, Polysorbate 20, Palmitoyl Pentapeptide-4, Trimethylsiloxysilicate, Aluminum Hydroxide, Methicone May contain: CI 77891, CI 77492, CI 77491, CI 77499"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-1573229944.png",
        "sub_category": "FACE",
        "product_name": "Everyday BB Shine Free Loose Powder",
        "price": 59000,
        "about": "Kini kamu yang memiliki kulit wajah cenderung berminyak tak perlu khawatir tampil tak fresh lagi. Cukup dengan Wardah Everyday Shine-Free Loose Powder dan kilat berlebih wajahmu dapat menghilang dengan sebuah tepuk! Oil absorber di dalamnya mengandung jutaan micropores yang bantu kendalikan minyak wajah berlebih. Wajahmu jadi tampak halus, lembut dan terasa fresh lagi!",
        "how_to": "Tepukkan lembut pada seluruh wajah terutama bagian yang terasa berminyak seperti daerah T-Zone.",
        "ingredients": "Corn (Zea Mays) Starch, Kaolin, Silica, Dimethicone/Vinyl Dimethicone Crosspolymer, HDI/Trimethylol Hexyllactone Crosspolymer, Mica, Zinc Myristate, Boron Nitride, Caprylic/Capric Triglyceride, Methyl Methacrylate Crosspolymer, Phenoxyethanol, Methicone, Dimethiconol Stearate, Ethylhexylglycerin."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1581587695.png",
        "sub_category": "LIPS",
        "product_name": "Everyday Cheek &amp; Liptint",
        "price": 45000,
        "about": "Tampil happy dan fresh setiap hari dengan warna Wardah Everyday Cheek & Lip Tint. Tambah rona wajah pada bibir dan pipi dengan Blushtensity Fit yang menyatu sempurna dengan warna kulit alami. Mengandung 7 Natural Essences yang melembabkan sekaligus menutrisi kulit. Bibir dan pipi pun merona alami tanpa terasa kering dengan Wardah Everyday Cheek&Lip Tint.",
        "how_to": "Cheek: Tepukkan aplikator ke pipi secara ringan, langsung baurkan dengan jari untuk pipi meronamu. Lip: 1. Oleskan lip tint ke seluruh bibirmu hingga intensitas warna yang diinginkan tercapai 2. Untuk efek gradasi, oleskan lip int ke bagian dalam bibir lalu baurkan dengan jari",
        "ingredients": "Aqua, Octyldodecanol, Glycerin, Phytosteryl/Isostearyl/Cetyl/Stearyl/Behenyl Dimer Dilinoleate, Ethylcellulose, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Behenyl Alcohol, Stearyl Alcohol, Polysorbate 60, Tocopheryl Acetate, PEG-20 Phytosterol, Phenoxyethanol, Fragrance, Cetyl Alcohol, Phytosterols, Chlorphenesin, Squalane, Caprylic/Capric Triglyceride, Glyceryl Stearate, Hydrogenated Lecithin, Oenothera Biennis Oil, Olive (Olea Europaea) Oil, Prunus Amygdalus Dulcis, Shea Butter (Butyrospermum Parkii), Simmondsia Chinensis (Jojoba) Seed Oil, Allantoin, Ethylhexylglycerin, Sorbitan Isostearate, Stevioside. May Contain:CI 16035, CI 17200, CI 45380, CI 45410"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1581666469.png",
        "sub_category": "LIPS",
        "product_name": "Long Lasting Lipstick",
        "price": 49500,
        "about": "Formula dengan High Color Fixation Technology membuat bibirmu tampak cantik lebih lama. Memiliki warna yang intens dan formula lembut, membantu menjaga kelembaban alami bibir hingga tetap terlihat memukau. Tersedia dalam 19 varian warna yang sempurna!",
        "how_to": "1. Bersihkan bibir terlebih dahulu, 2. Aplikasikan Long Lasting Lipstick keseluruh bibir",
        "ingredients": "Cyclomethicone, Isopropyl Myristate, Caprylic/Capric Triglyceride, Isohexadecane, Candelilla (Euphorbia Cerifera) Wax, Beeswax, Hydrogenated Polycyclopentadiene, Polyethylene, Carnauba (Copernicia Cerifera) Wax, Myristyl Lactate, Polyglyceryl-2 Triisostearate, Simmondsia Chinensis (Jojoba) Seed Oil, Squalane, Cetyl Acetate, Isododecane, Microcrystalline Wax, Polymethyl Methacrylate, Paraffin Wax, Stearyl Acetate, Polypropylene, Oleyl Acetate, Fragrance, BHT, Propylparaben, Methylparaben, Acetylated Lanolin Alcohol, Talc, Synthetic Fluorphlogopite, Isononyl Isononanoate, Isopropyl Titanium Triisostearate, Stearalkonium Hectorite, Propylene Carbonate, Polyhydroxystearic Acid  May Contain :CI 77891, CI 77492, CI 15850, CI 77491, CI 77499, CI 45410:2, CI 15850:1, CI 15850:2, CI 77742, CI 77019"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-3-1648519546.webp",
        "sub_category": "FACE",
        "product_name": "Acnederm Face Powder",
        "price": 46000,
        "about": "Bedak tabur translucent dirancang khusus dengan formula Derma Control Activities with Salicylic Acid+Soybean Extract untuk jenis kulit berjerawat atau cenderung berjerawat (wajah dengan minyak berlebih). Formula ringan dan tekstur yang halus tidak menyumbat pori-pori kulit. Dapatkan hasil bebas kilap, lembut, dan matte ",
        "how_to": "Ulaskan pada wajah dan leher yang telah dibersihkan., Untuk hasil maksimal gunakan secara rutin Wardah Acnederm Series.",
        "ingredients": "DERMACONTROL ACTIVES, SALICYLIC ACID. Mica, Kaolin, Corn (Zea Mays) Starch, Zinc Stearate, Silica, Isopropyl Myristate, Hydrogen Dimethicone, Salicylic Acid, Triclosan, Allantoin, Methicone, Phenoxyethanol, Water, Butylene Glycol, Fragrance, Glycine Soja (Soybean) Protein, Aluminum Hydroxide.May contain:CI 77891, CI 77492, CI 77491, CI 77499."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1571148398.png",
        "sub_category": "EYE",
        "product_name": "Eyeshadow",
        "price": 49500,
        "about": "Sapuan warna intens untuk menunjolkan keindahan mata. Dikombinaskan dalam tiga warna sempurna untuk membantu mengekspresikan bentuk terbaik dari matamu. Terbuat dari Microcoated Particle yang nyaman dan lembut saar diaplikasikan. Tersedia dalam 14 kombinasi warna yang sulit untuk dilewatkan",
        "how_to": "1. Aplikasikan Wardah Eyeshadow favorite mu ke bagian kelopak mata mu.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-1572511849.png",
        "sub_category": "FACE",
        "product_name": "C-Defense DD Cream",
        "price": 32000,
        "about": "Krim dengan UV Protection yang bantu mencerahkan, menghaluskan, dan meratakan warna kulit. dengan kandungan Allatoin, SPF 30, Vitamin C, Vitamin B3, dan Vitamin E yang membuat kulit tampak lebih cerah dan terlindungi dari radikal bebas. ",
        "how_to": "Oleskan merata pada permukaa wajah yang telah dibersihkan. Dapat digunakan langsung atau setelah menggunakan pelembab",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1571146994.png",
        "sub_category": "LIPS",
        "product_name": "Lipbalm",
        "price": 23500,
        "about": "Pelembab bibir berukuran mini dengan manfaat multiguna untuk bibir tetap tampak sehat terat. dengan kandungan Triple Moisture Care System yang melembabkan, vitamin E untuk nutrisi, dan kandungan tabir surya yang akan melindungi bibirmu dari paparan sinar UV. Tersedia dalam 3 varian yang menyenangkan!",
        "how_to": "1. Bersihkan bibir terlebih dahulu, 2. Aplikasikan Wardah Lipbalm keseluruh bibir",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1586396878.png",
        "sub_category": "LIPS",
        "product_name": "Colorfit Velvet Matte Lip Mousse",
        "price": 67050,
        "about": "Liquid lipstick dengan tekstur mousse yang nyaman dipakai di bibir. ",
        "how_to": "Gunakan Wardah Lipbalm atau Lipgloss sebelum menggunanakan lipstick yang bertujuan untuk melembabkan bibir., 1. Aplikasikan lipstik di bagian dalam bibir., 2. Gunakan ujung aplikator untuk merapikan pulasan lipstik hingga ke bagian ujung bibir., 3. Gunakan hingga seluruh warna merata di bibir cantikmu.",
        "ingredients": "Cyclopentasiloxane, Dimethicone, Isododecane, Bis-Hydroxylauryl Dimethicone/IPDI Copolymer, Polyglyceryl-2 Triisostearate, Trimethylsiloxysilicate, Vinyl Dimethicone/Methicone Silsesquioxane Crosspolymer, Silica, Dimethicone/Vinyl Dimethicone Crosspolymer, Divinyldimethicone/Dimethicone Crosspolymer, Isohexadecane, Disteardimonium Hectorite, Propylene Carbonate, Phenoxyethanol, Ethylhexylglycerin, Methicone, Tocopheryl Acetate, Aluminum Hydroxide, Triethoxycaprylylsilane, Fragrance, Tocopherol. May Contain : CI 45410, CI 15850, CI 15850:1, CI 15850:2, CI 42090, CI 77491, CI 77492, CI 77499, CI 77891."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-2-1656144338.webp",
        "sub_category": "EYE",
        "product_name": "Optimum Hi-Black Eyeliner",
        "price": 72450,
        "about": "Expressive, Consistent, & Long Wear. Tank-Eyeliner berbentuk pena dengan aplikator velvet felt-tip yang didesain khusus sehingga mudah digunakan. Menghasilkan garis hitam intens untuk aksentuasi bentuk mata maksimal yang tahan lama.",
        "how_to": "1. Sebaiknya penggunaan Eyeliner dilakukan setelah penggunaan Wardah Eyeshadow., 2. Gunakan Wardah Eye and Lip Make-Up Remover ketika akan membersihkan bagian mata dari Eyeliner., 3. Aplikasikan dari arah dalam ke luar eyeliner dengan satu tarikan garis untuk hasil sempurna.",
        "ingredients": "Water, Propylene Glycol, Acrylates/Ethylhexyl Acrylate Copolymer, Laureth-21, Acrylates/Dimethylaminoethyl Methacrylate Copolymer, Phenoxyethanol, PEG-40 Hydrogenated Castor Oil, Ammonium Acrylates Copolymer, Sodium Dehydroacetate, Sodium Laureth-12 Sulfate, Caprylyl Glycol, Ethylhexylglycerin, C11-15 Pareth-7, Butylene Glycol, Potasium Sorbate, Sodium Lauryl Sulfate, Disodium Laureth Sulfosuccinate, CI 77266."
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-1573146762.png",
        "sub_category": "EYE",
        "product_name": "Staylast Gel Eyeliner",
        "price": 50500,
        "about": "All eyes are on your eyes. Eyeliner gel/krim yang lembut, cepat kering, dan smudge-proof, mempertahankan tampilan cantik matamu setiap hari. Dengan kuas yang didesain khusus untuk hasil yang presisi, membuatmu bisa berkreasi dengan garis tipis atau dramatis sekalipun.",
        "how_to": "Sebaiknya penggunaan Eyeliner dilakukan setelah penggunaan Wardah Eyeshadow. Gunakan Wardah Eye and Lip Make-Up Remover ketika akan membersihkan bagian mata dari Eyeliner., 1. baurkan gel eyeliner dengan menggunakan kuas pada posisi mendatar., 2. Jangan mengambil dengan posisi kuas tegak karena akan merusak kuas., 3. Aplikasikan dari arah dalam ke luar dengan satu tarikan garis., 4. Setelah aplikasi, bersihkan kelebihan eyeliner pada kuas dengan menggunakan tissue atau cotton bud",
        "ingredients": "Isododecane, Trimethylsiloxysilicate, Polypropylsilsesquioxane, Cyclomethicone, Phenyl Trimethicone, Caprylyl Methicone, Disteardimonium Hectorite, Di-C-20-40 Alkyl Dimer Dilinoleate, Candelilla (Euphorbia Cerifera) Wax, Nylon-12, Stearyl Behenate, Silica, Propylene Carbonate, Hydrogenated Polyisobutene, Microcrystalline Wax, Dimethicone/Vinyl Dimethicone Crosspolymer, Cetyl Behenate, Stearyl Stearate, Phenoxyethanol, Carnauba (Copernicia Cerifera) Wax, Shea Butter (Butyrospermum Parkii), BHT, Dextrin Palmitate/Ethylhexanoate, Triethylene Glycol, Acrylates/Dimethicone Copolymer, CI 7726"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/slides-2-1656144163.webp",
        "sub_category": "EYE",
        "product_name": "Staylast Liquid Eyeliner",
        "price": 42000,
        "about": "Let your eyes do the talk. Liquid Eyeliner diformulasikan dengan warna hitam yang intens dan cepat kering. Memberi kilauan natural sehingga memperindah dan menegaskan bentuk mata dengan natural.",
        "how_to": "Sebaiknya penggunaan Eyeliner dilakukan setelah penggunaan Wardah Eyeshadow. Gunakan Wardah Eye and Lip Make-Up Remover ketika akan membersihkan bagian mata dari Eyeliner., 1. Kocok dahulu sebelum digunakan., 2. Tarik satu garis lurus dari bagian dalam mata ke arah luar mata.",
        "ingredients": "Aqua, Butylene Glycol, Styrene/Acrylates/Ammonium Methacrylate Copolymer, Hydrogenated Polyisobutene, Hydrogenated Polycyclopentadiene, Ceteth-20, Phenyl Trimethicone, PVP, Polyethylene, Benzyl Alcohol, Ethylhexylglycerin, Carnauba (Copernicia Cerifera) Wax, Sodium Laureth-12 Sulfate, Cetearyl Behenate, Stearic Acid, Synthetic Beeswax, Tocopheryl Acetate, Ozokerite, Potassium Sorbate, Xanthan Gum, Methylparaben, Tocopherol, Hectorite, Cellulose, Propylparaben, Ammonium Hydroxide, Disodium EDTA, Tetrasodium EDTA, PEG-40 Hydrogenated Castor Oil, Laureth-21, Sodium Dehydroacetate, CI 77266"
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1620641553.jpg",
        "sub_category": "LIPS",
        "product_name": "Intense Matte Lipstick",
        "price": 49500,
        "about": "Matte and moist in a minute! True matte finished yang diformulasikan dengan Smooth Creamy Texture, Supreme Moisture Charge, dan kombinasi Highly Pigmented Colors menjadikan tampilan bibir cantik lembab dalam satu olesan. Rangkaian 12 warna terkini dan cantik memiliki ketahanan warna maksimal.",
        "how_to": "1. Putar lipstik keluar maksimal ¼ bagian (jangan terlalu tinggi)., 2. Pulaskan lipstik dari bagian tengah bibir atas lalu mengikuti kontur bibir, menuju arah kanan dan kiri., 3. Pulaskan lipstik ke seluruh permukaan bibir bawah.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1581581240.png",
        "sub_category": "LIPS",
        "product_name": "Exclusive Moist Lipstick",
        "price": 21500,
        "about": "Lipstick Moist dengan kilap alami yang memberikan kelembaban pada bibir dengan Aloe Vera Extract dan Vitamin E serta kesan bibir yang sehat",
        "how_to": "1. Putar lipstik keluar maksimal ¼ bagian (jangan terlalu tinggi)., 2. Pulaskan lipstik dari bagian tengah bibir atas lalu mengikuti kontur bibir, menuju arah kanan dan kiri., 3. Pulaskan lipstik ke seluruh permukaan bibir bawah.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1582871415.png",
        "sub_category": "LIPS",
        "product_name": "Exclusive Matte Lipstick",
        "price": 21500,
        "about": "Matte Lipstik dengan hasil yang lembut dan nyaman pada bibir dilengkapi dengan Vitamin E",
        "how_to": "1. Putar lipstik keluar maksimal ¼ bagian (jangan terlalu tinggi)., 2. Pulaskan lipstik dari bagian tengah bibir atas lalu mengikuti kontur bibir, menuju arah kanan dan kiri., 3. Pulaskan lipstik ke seluruh permukaan bibir bawah.",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1583745591.png",
        "sub_category": "FACE",
        "product_name": "Exclusive Blush On",
        "price": 62500,
        "about": "Wardah Exclusive Blush on yang tersedia dalam 2 varian warna yang cocok digunakan untuk berbagai warna kulit wanita indonesia, yaitu 01 Rosy Pink dan 02 Coral Peach Blush on yang di formulasikan khusus dengan :",
        "how_to": "1. Aplikasikan blush pada pipimu, 2. Sapukan dengan lembut aplikator pada blush, 3. Kemudian, baurkan blush hingga terlihat natural",
        "ingredients": ""
    }'),
    ('{
        "category": "MAKE UP",
        "image": "https://wardah-mainsite.s3-ap-southeast-1.amazonaws.com/medias/products/variant-1581578388.png",
        "sub_category": "LIPS",
        "product_name": "Exclusive Matte Lip Cream",
        "price": 59850,
        "about": "The Perfect Color Intensity for an Unforgettable Luxury. Lushlip Liquid & Colorbinding Pigments dengan tesktur velvet creamy sekali oles, ringan, intens dan lembut, serta memberikan efek matte yang cepat kering dan tidak lengket. Variasi warna mewah sempurna dapat bertahan lama di bibir sepanjang hari.",
        "how_to": "Gunakan Wardah Lip Balm atau Lipgloss sebelum menggunakan lipstik yang bertujuan untuk melembapkan bibir., 1. Aplikasikan lipstik di bagian dalam bibir., 2. Gunakan ujung aplikator untuk merapikan pulasan lipstik hingga ke bagian ujung bibir., 3. Gunakan hingga seluruh warna merata di bibir cantikmu.",
        "ingredients": "Cyclopentasiloxane, Isododecane, Trisiloxane, Trimethylsiloxysilicate, Diisostearyl Malate, Synthetic beeswax, Disteardimonium Hectorite, Caprylyl Methicone, Aluminum Starch Octenylsuccinate, Propylene Carbonate, Silica Dimethyl Silylate, Tocopheryl Acetate, Cetyl Dimethicone, Propylparaben, Fragrance, Aluminum Hydroxide, Triethoxycaprylylsilane, Talc. May Contain :CI 45410:2, CI 15850:1, CI 42090, CI 77891, CI 15850:2, CI 77491, CI 77492, CI 77499, CI 15850"
    }');
      
SELECT * FROM data_wardah;

SELECT id, data ->> 'category' AS category, data ->> 'image' AS image, 
data ->> 'sub_category' AS sub_category, data ->> 'product_name' AS product_name, 
data ->> 'price' AS price, data ->> 'about' AS about, data ->> 'how_to' AS how_to,
data ->> 'ingredients' AS ingredients FROM data_wardah;

SELECT data ->> 'product_name' as product_name, 
data ->> 'ingredients' as ingredients FROM data_wardah 
WHERE data ->> 'ingredients' LIKE '%Niacinamide%';
