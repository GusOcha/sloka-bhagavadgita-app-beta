class SlokaModel {
  final int chapter;
  final int verse;
  final String sanskritText;
  final String transliteration;
  final String indonesianTranslation;
  final String audioUrl;
  bool isBookmarked;

  SlokaModel({
    required this.chapter,
    required this.verse,
    required this.sanskritText,
    required this.transliteration,
    required this.indonesianTranslation,
    required this.audioUrl,
    this.isBookmarked = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'chapter': chapter,
      'verse': verse,
      'sanskritText': sanskritText,
      'transliteration': transliteration,
      'indonesianTranslation': indonesianTranslation,
      'audioUrl': audioUrl,
      'isBookmarked': isBookmarked,
    };
  }

  factory SlokaModel.fromMap(Map<String, dynamic> map) {
    return SlokaModel(
      chapter: map['chapter'],
      verse: map['verse'],
      sanskritText: map['sanskritText'],
      transliteration: map['transliteration'],
      indonesianTranslation: map['indonesianTranslation'],
      audioUrl: map['audioUrl'],
      isBookmarked: map['isBookmarked'] ?? false,
    );
  }

  String get id => 'chapter_${chapter}_verse_$verse';
}

final List<SlokaModel> dummySlokas = [
  // Chapter 1 - 5 slokas
    SlokaModel(
      chapter: 1,
      verse: 1,
      sanskritText: 'धृतराष्ट्र उवाच | धर्मक्षेत्रे कुरुक्षेत्रे समवेता युयुत्सवः | मामकाः पाण्डवाश्चैव किमकुर्वत सञ्जय ||1||',
      transliteration: 'dhṛitarāśhtra uvācha dharma-kṣhetre kuru-kṣhetre samavetā yuyutsavaḥ māmakāḥ pāṇḍavāśhchaiva kimakurvata sañjaya',
      indonesianTranslation: 'Dhritarashtra berkata: Wahai Sanjay, setelah berkumpul di padang suci Kurukshetra, dan ingin berperang, apa yang dilakukan putra-putraku dan anak-anak Pandu?',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/001_001.mp3',
    ),
    SlokaModel(
      chapter: 1,
      verse: 2,
      sanskritText: 'सञ्जय उवाच । दृष्ट्वा तु पाण्डवानीकं व्यूढं दुर्योधनस्तदा । आचार्यमुपसङ्गम्य राजा वचनमब्रवीत् ।।2।।',
      transliteration: 'sañjaya uvāca dṛṣṭvā tu pāṇḍavānīkaṁ vyūḍhaṁ duryodhanas tadā ācāryam upasaṅgamya rājā vacanam abravīt',
      indonesianTranslation: 'Sanjaya berkata: Setelah melihat pasukan Pandawa yang tersusun rapi, Raja Duryodhana mendekati gurunya, Drona, dan berkata.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/001_002.mp3',
    ),
    SlokaModel(
      chapter: 1,
      verse: 3,
      sanskritText: 'पश्यैतां पाण्डुपुत्राणामाचार्य महतीं चमूम् । व्यूढां द्रुपदपुत्रेण तव शिष्येण धीमता ।।3।।',
      transliteration: 'paśyaitāṁ pāṇḍu-putrāṇām ācārya mahatīṁ camūm vyūḍhāṁ drupada-putreṇa tava śiṣyeṇa dhīmatā',
      indonesianTranslation: 'Duryodhan berkata: Guru yang terhormat! Lihatlah pasukan perkasa putra-putra Pandu, yang begitu ahli dipersiapkan untuk bertempur oleh muridmu sendiri yang berbakat, putra Drupad.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/001_003.mp3',
    ),
    SlokaModel(
      chapter: 1,
      verse: 4,
      sanskritText: 'अत्र शूरा महेष्वासा भीमार्जुनसमा युधि युयुधानो विराटश्च द्रुपदश्च महारथ: ||4|| धृष्टकेतुश्चेकितान: काशिराजश्च वीर्यवान् | पुरुजित्कुन्तिभोजश्च शैब्यश्च नरपुङ्गव: ||5|| युधामन्युश्च विक्रान्त उत्तमौजाश्च वीर्यवान् | सौभद्रो द्रौपदेयाश्च सर्व एव महारथा: ||6||',
      transliteration: 'atra śhūrā maheṣhvāsā bhīmārjuna-samā yudhi yuyudhāno virāṭaśhcha drupadaśhcha mahā-rathaḥ dhṛiṣhṭaketuśhchekitānaḥ kāśhirājaśhcha vīryavān purujit kuntibhojaśhcha śhaibyaśhcha nara-puṅgavaḥ yudhāmanyuśhcha vikrānta uttamaujāśhcha vīryavān saubhadro draupadeyāśhcha sarva eva mahā-rathāḥ',
      indonesianTranslation: 'Lihatlah di barisan mereka banyak prajurit yang kuat, seperti Yuyudhan, Virat, dan Drupad, memegang busur yang perkasa dan setara dalam kehebatan militer dengan Bheem dan Arjun. Ada juga pahlawan ulung seperti Dhrishtaketu, Chekitan, Raja Kashi yang gagah berani, Purujit, Kuntibhoj, dan Shaibya—semua orang terbaik. Dalam barisan mereka, mereka juga memiliki Yudhamanyu yang pemberani, Uttamauja yang gagah berani, putra Subhadra, dan putra-putra Draupadi, yang semuanya adalah kepala prajurit yang hebat.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/001_004-006.mp3',
    ),
    SlokaModel(
      chapter: 1,
      verse: 7,
      sanskritText: 'अस्माकं तु विशिष्टा ये तान्निबोध द्विजोत्तम | नायका मम सैन्यस्य संज्ञार्थं तान्ब्रवीमि ते ||7||',
      transliteration: 'asmākaṁ tu viśhiṣhṭā ye tānnibodha dwijottama nāyakā mama sainyasya sanjñārthaṁ tānbravīmi te',
      indonesianTranslation: 'Wahai Brahmana terbaik, dengarkan juga tentang jenderal-jenderal utama di pihak kami, yang secara khusus memenuhi syarat untuk memimpin. Ini sekarang saya ceritakan kepadamu.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/001_007.mp3',
    ),
    
    // Chapter 2 - 5 slokas
    SlokaModel(
      chapter: 2,
      verse: 1,
      sanskritText: 'सञ्जय उवाच | तं तथा कृपयाविष्टमश्रुपूर्णाकुलेक्षणम् | विषीदन्तमिदं वाक्यमुवाच मधुसूदन: ||1||',
      transliteration: 'sañjaya uvāca taṁ tathā kṛpayāviṣṭam aśru-pūrṇākulekṣaṇam viṣīdantam idaṁ vākyam uvāca madhusūdanaḥ',
      indonesianTranslation: 'Sanjaya berkata: Melihat Arjuna yang dipenuhi rasa kasihan, matanya berlinang air mata dan diliputi keputusasaan, Madhusudana (Krishna) mengucapkan kata-kata berikut.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/002_001.mp3',
    ),
    SlokaModel(
      chapter: 2,
      verse: 2,
      sanskritText: 'श्रीभगवानुवाच | कुतस्त्वा कश्मलमिदं विषमे समुपस्थितम् | अनार्यजुष्टमस्वर्ग्यमकीर्तिकरमर्जुन ||2||',
      transliteration: 'śrī-bhagavān uvāca kutastvā kaśmalamidaṁ viṣame samupasthitam anārya-juṣṭam asvargyam akīrti-karam arjuna',
      indonesianTranslation: 'Sri Bhagavan berkata: Wahai Arjuna, dari mana datangnya kelemahan yang memalukan ini di saat yang genting seperti ini? Ini tidak pantas bagi seorang yang mulia dan tidak akan membawamu ke surga, melainkan mendatangkan aib.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/002_002.mp3',
    ),
    SlokaModel(
      chapter: 2,
      verse: 3,
      sanskritText: 'क्लैब्यं मा स्म गमः पार्थ नैतत्त्वय्युपपद्यते | क्षुद्रं हृदयदौर्बल्यं त्यक्त्वोत्तिष्ठ परन्तप ||२-३||',
      transliteration: 'klaibyaṁ mā sma gamaḥ pārtha naitat tvayy upapadyate kṣudraṁ hṛdaya-daurbalyaṁ tyaktvottiṣṭha parantapa',
      indonesianTranslation: 'Jangan menyerah pada kelemahan ini, O Arjuna, karena itu tidak pantas bagimu. Bangkitlah, O penakluk musuh, dan tinggalkan sifat pengecut yang hina ini.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/002_003.mp3',
    ),
    SlokaModel(
      chapter: 2,
      verse: 4,
      sanskritText: 'अर्जुन उवाच | कथं भीष्ममहं सङ्ख्ये द्रोणं च मधुसूदन | इषुभि: प्रतियोत्स्यामि पूजार्हावरिसूदन ||4||',
      transliteration: 'arjuna uvācha kathaṁ bhīṣhmam ahaṁ sankhye droṇaṁ cha madhusūdana iṣhubhiḥ pratiyotsyāmi pūjārhāvari-sūdana',
      indonesianTranslation: 'Arjun berkata: Wahai Madhusudan, bagaimana aku bisa menembakkan panah dalam pertempuran ke orang-orang seperti Bheeshma dan Dronacharya, yang layak disembahku, wahai penghancur musuh?',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/002_004.mp3',
    ),
    SlokaModel(
      chapter: 2,
      verse: 5,
      sanskritText: 'गुरूनहत्वा हि महानुभावान् श्रेयो भोक्तुं भैक्ष्यमपीह लोके | हत्वार्थकामांस्तु गुरूनिहैव भुञ्जीय भोगान् रुधिरप्रदिग्धान् ||5||',
      transliteration: 'gurūnahatvā hi mahānubhāvān śhreyo bhoktuṁ bhaikṣhyamapīha loke hatvārtha-kāmāṁstu gurūnihaiva bhuñjīya bhogān rudhira-pradigdhān',
      indonesianTranslation: 'Akan lebih baik hidup di dunia ini dengan mengemis, daripada menikmati hidup dengan membunuh para tetua yang mulia ini, yang adalah guruku. Jika kita membunuh mereka, kekayaan dan kesenangan yang kita nikmati akan tercemar darah.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/002_005.mp3',
    ),
    
    // Chapter 3 - 5 slokas
    SlokaModel(
      chapter: 3,
      verse: 1,
      sanskritText: 'अर्जुन उवाच | ज्यायसी चेत्कर्मणस्ते मता बुद्धिर्जनार्दन | तत्किं कर्मणि घोरे मां नियोजयसि केशव ||1|| व्यामिश्रेणेव वाक्येन बुद्धिं मोहयसीव मे | तदेकं वद निश्चित्य येन श्रेयोऽहमाप्नुयाम् ||2||',
      transliteration: 'arjuna uvācha jyāyasī chet karmaṇas te matā buddhir janārdana tat kiṁ karmaṇi ghore māṁ niyojayasi keśhava vyāmiśhreṇeva vākyena buddhiṁ mohayasīva me tad ekaṁ vada niśhchitya yena śhreyo ham āpnuyām',
      indonesianTranslation: 'Arjun berkata: Wahai Janardan, jika Engkau menganggap pengetahuan lebih unggul daripada tindakan, lalu mengapa Engkau meminta saya untuk mengobarkan perang yang mengerikan ini? Kecerdasan saya bingung dengan nasihat-Mu yang ambigu. Tolong beritahu saya dengan tegas satu jalan yang dengannya saya dapat mencapai kebaikan tertinggi.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/003_001-002.mp3',
    ),
    SlokaModel(
      chapter: 3,
      verse: 3,
      sanskritText: 'श्रीभगवानुवाच | लोकेऽस्मिन्द्विविधा निष्ठा पुरा प्रोक्ता मयानघ | ज्ञानयोगेन साङ्ख्यानां कर्मयोगेन योगिनाम् ||3||',
      transliteration: 'śhrī bhagavān uvācha loke smin dvi-vidhā niṣhṭhā purā proktā mayānagha jñāna-yogena sāṅkhyānāṁ karma-yogena yoginām',
      indonesianTranslation: 'Tuhan berfirman: Wahai yang tidak berdosa, dua jalan yang menuju pencerahan sebelumnya telah dijelaskan oleh-Ku: jalan pengetahuan, bagi mereka yang cenderung ke arah kontemplasi, dan jalan kerja bagi mereka yang cenderung ke arah tindakan.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/003_003.mp3',
    ),
    SlokaModel(
      chapter: 3,
      verse: 4,
      sanskritText: 'न कर्मणामनारम्भान्नैष्कर्म्यं पुरुषोऽश्नुते | न च संन्यसनादेव सिद्धिं समधिगच्छति ||4||',
      transliteration: 'na karmaṇām anārambhān naiṣhkarmyaṁ puruṣho śhnute na cha sannyasanād eva siddhiṁ samadhigachchhati',
      indonesianTranslation: 'Seseorang tidak dapat mencapai kebebasan dari reaksi karma hanya dengan menjauhkan diri dari pekerjaan, juga tidak dapat mencapai kesempurnaan pengetahuan dengan penyerahan fisik belaka.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/003_004.mp3',
    ),
    SlokaModel(
      chapter: 3,
      verse: 5,
      sanskritText: 'न हि कश्चित्क्षणमपि जातु तिष्ठत्यकर्मकृत् | कार्यते ह्यवश: कर्म सर्व: प्रकृतिजैर्गुणै: ||5||',
      transliteration: 'na hi kaśhchit kṣhaṇam api jātu tiṣhṭhatyakarma-kṛit kāryate hyavaśhaḥ karma sarvaḥ prakṛiti-jair guṇaiḥ',
      indonesianTranslation: 'Tidak ada seorang pun yang bisa bertahan tanpa tindakan bahkan untuk sesaat. Memang, semua makhluk dipaksa untuk bertindak dengan sifat-sifat mereka yang lahir dari sifat material (tiga guṇa).',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/003_005.mp3',
    ),
    SlokaModel(
      chapter: 3,
      verse: 6,
      sanskritText: 'कर्मेन्द्रियाणि संयम्य य आस्ते मनसा स्मरन् | इन्द्रियार्थान्विमूढात्मा मिथ्याचार: स उच्यते ||6||',
      transliteration: 'karmendriyāṇi sanyamya ya āste manasā smaran indriyārthān vimūḍhātmā mithyāchāraḥ sa uchyate',
      indonesianTranslation: 'Mereka yang menahan organ-organ eksternal tindakan, sambil terus memikirkan objek-objek indera dalam pikiran, tentu saja menipu diri mereka sendiri dan disebut munafik.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/003_006.mp3',
    ),

    // Chapter 4 - 5 slokas
    SlokaModel(
      chapter: 4,
      verse: 1,
      sanskritText: 'श्रीभगवानुवाच | इमं विवस्वते योगं प्रोक्तवानहमव्ययम् |विवस्वान्मनवे प्राह मनुरिक्ष्वाकवेऽब्रवीत् ||1||',
      transliteration: 'śhrī bhagavān uvācha imaṁ vivasvate yogaṁ proktavān aham avyayam vivasvān manave prāha manur ikṣhvākave ’bravīt',
      indonesianTranslation: 'Tuhan Yang Maha Kuasa, Sri Krishna bersabda: Aku mengajarkan ilmu Yoga yang abadi ini kepada Dewa Matahari, Vivasvan, yang kemudian meneruskannya kepada Manu; dan Manu, pada gilirannya, mengajarkannya kepada Ikshvaku.',
      audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/004_001.mp3',
    ),
    // Chapter 4, Verse 2
  SlokaModel(
    chapter: 4,
    verse: 2,
    sanskritText: 'एवं परम्पराप्राप्तमिमं राजर्षयो विदुः | स कालेनेह महता योगो नष्टः परन्तप ||2||',
    transliteration: 'evaṁ paramparā-prāptam imaṁ rājarṣhayo viduḥ sa kāleneha mahatā yogo naṣhṭaḥ parantapa',
    indonesianTranslation: 'Dengan cara demikian, ilmu Yoga yang suci ini diwariskan secara turun-temurun, dan para raja suci memahaminya. Namun, seiring waktu, ilmu ini hilang dari dunia, oh Parantapa (Arjuna).',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/004_002.mp3',
  ),

  // Chapter 4, Verse 3
  SlokaModel(
    chapter: 4,
    verse: 3,
    sanskritText: 'स एवायं मया तेऽद्य योगः प्रोक्तः पुरातनः | भक्तोऽसि मे सखा चेति रहस्यं ह्येतदुत्तमम् ||3||',
    transliteration: 'sa evāyaṁ mayā te ’dya yogaḥ proktaḥ purātanaḥ bhakto ’si me sakhā cheti rahasyaṁ hyetad uttamam',
    indonesianTranslation: 'Ilmu Yoga yang sama dan sangat kuno ini Kuajarkan kepadamu hari ini karena engkau adalah pemuja-Ku dan sahabat-Ku. Rahasia yang tertinggi ini adalah milikmu.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/004_003.mp3',
  ),

  // Chapter 4, Verse 4
  SlokaModel(
    chapter: 4,
    verse: 4,
    sanskritText: 'अर्जुन उवाच | अपरं भवतो जन्म परं जन्म विवस्वतः | कथमेतद्विजानीयां त्वमादौ प्रोक्तवानिति ||4||',
    transliteration: 'arjuna uvācha aparaṁ bhavato janma paraṁ janma vivasvataḥ kathametadvijānīyāṁ tvamādau proktavāniti',
    indonesianTranslation: 'Arjuna berkata: Engkau lahir setelah Vivasvan (Dewa Matahari), bagaimana mungkin Engkau mengajarkan ilmu ini kepadanya di awal zaman?',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/004_004.mp3',
  ),

  // Chapter 4, Verse 5
  SlokaModel(
    chapter: 4,
    verse: 5,
    sanskritText: 'श्रीभगवानुवाच | बहूनि मे व्यतीतानि जन्मानि तव चार्जुन | तान्यहं वेद सर्वाणि न त्वं वेत्थ परन्तप ||5||',
    transliteration: 'śhrī bhagavān uvācha bahūni me vyatītāni janmāni tava chārjuna tānyahaṁ veda sarvāṇi na tvaṁ vettha parantapa',
    indonesianTranslation: 'Tuhan Yang Maha Kuasa bersabda: Banyak kelahiran-Ku dan kelahiranmu telah berlalu, oh Arjuna. Aku mengetahui semuanya, tetapi engkau tidak, oh Parantapa.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/004_005.mp3',
  ),

  // Chapter 5, Verse 1
  SlokaModel(
    chapter: 5,
    verse: 1,
    sanskritText: 'अर्जुन उवाच | संन्यासं कर्मणां कृष्ण पुनर्योगं च शंससि | यच्छ्रेय एतयोरेकं तन्मे ब्रूहि सुनिश्चितम् ||1||',
    transliteration: 'arjuna uvācha sannyāsaṁ karmaṇāṁ kṛiṣhṇa punar yogaṁ cha śhansasi yach chhreya etayor ekaṁ tan me brūhi su-niśhchitam',
    indonesianTranslation: 'Arjuna berkata: Oh Krishna, Engkau memuji pelepasan tindakan (Sannyasa) dan juga Yoga (Karma Yoga). Tolong beritahukan kepadaku dengan pasti mana di antara keduanya yang lebih baik.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/005_001.mp3',
  ),

  // Chapter 5, Verse 2
  SlokaModel(
    chapter: 5,
    verse: 2,
    sanskritText: 'श्रीभगवानुवाच | संन्यासः कर्मयोगश्च निःश्रेयसकरावुभौ | तयोस्तु कर्मसंन्यासात्कर्मयोगो विशिष्यते ||2||',
    transliteration: 'śhrī bhagavān uvācha sannyāsaḥ karma-yogaśh cha niḥśhreyasa-karāv ubhau tayos tu karma-sannyāsāt karma-yogo viśhiṣhyate',
    indonesianTranslation: 'Tuhan Yang Maha Kuasa bersabda: Baik pelepasan tindakan (Sannyasa) maupun Karma Yoga sama-sama membawa kebebasan. Namun, di antara keduanya, Karma Yoga lebih unggul daripada Sannyasa.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/005_002.mp3',
  ),

  // Chapter 5, Verse 3
  SlokaModel(
    chapter: 5,
    verse: 3,
    sanskritText: 'ज्ञेयः स नित्यसंन्यासी यो न द्वेष्टि न काङ्क्षति | निर्द्वन्द्वो हि महाबाहो सुखं बन्धात्प्रमुच्यते ||3||',
    transliteration: 'jñeyaḥ sa nitya-sannyāsī yo na dveṣhṭi na kāṅkṣhati nirdvandvo hi mahā-bāho sukhaṁ bandhāt pramuchyate',
    indonesianTranslation: 'Ketahuilah bahwa ia adalah seorang Sannyasi (pertapa) sejati yang tidak membenci maupun menginginkan hasil dari tindakannya. Oh Arjuna, orang yang bebas dari dualitas terbebas dari belenggu duniawi.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/005_003.mp3',
  ),

  // Chapter 5, Verse 4
  SlokaModel(
    chapter: 5,
    verse: 4,
    sanskritText: 'साङ्ख्ययोगौ पृथग्बालाः प्रवदन्ति न पण्डिताः | एकमप्यास्थितः सम्यगुभयोर्विन्दते फलम् ||4||',
    transliteration: 'sāṅkhya-yogau pṛithag bālāḥ pravadanti na paṇḍitāḥ ekam apy āsthitaḥ samyag ubhayor vindate phalam',
    indonesianTranslation: 'Hanya orang bodoh yang menganggap jalan pengetahuan (Sankhya) dan jalan tindakan (Karma Yoga) sebagai hal yang terpisah. Orang bijak yang mengikuti salah satunya dengan benar akan memperoleh hasil dari keduanya.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/005_004.mp3',
  ),

  // Chapter 5, Verse 5
  SlokaModel(
    chapter: 5,
    verse: 5,
    sanskritText: 'यत्साङ्ख्यैः प्राप्यते स्थानं तद्योगैरपि गम्यते | एकं साङ्ख्यं च योगं च यः पश्यति स पश्यति ||5||',
    transliteration: 'yat sāṅkhyaiḥ prāpyate sthānaṁ tad yogair api gamyate ekaṁ sāṅkhyaṁ cha yogaṁ cha yaḥ paśhyati sa paśhyati',
    indonesianTranslation: 'Tujuan yang dicapai oleh para filsuf (Sankhya) juga dicapai oleh para yogi. Siapa yang melihat bahwa Sankhya dan Yoga adalah satu, ia melihat dengan benar.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/005_005.mp3',
  ),
  // Chapter 6, Verse 1
  SlokaModel(
    chapter: 6,
    verse: 1,
    sanskritText: 'श्रीभगवानुवाच | अनाश्रितः कर्मफलं कार्यं कर्म करोति यः | स संन्यासी च योगी च न निरग्निर्न चाक्रियः ||1||',
    transliteration: 'śhrī bhagavān uvācha anāśhritaḥ karma-phalaṁ kāryaṁ karma karoti yaḥ sa sannyāsī cha yogī cha na niragnir na chākriyaḥ',
    indonesianTranslation: 'Tuhan Yang Maha Kuasa bersabda: Ia yang melakukan kewajibannya tanpa bergantung pada hasil tindakan adalah seorang Sannyasi dan Yogi sejati - bukan ia yang tidak menyalakan api suci atau tidak bekerja.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/006_001.mp3',
  ),

  // Chapter 6, Verse 2
  SlokaModel(
    chapter: 6,
    verse: 2,
    sanskritText: 'यं संन्यासमिति प्राहुर्योगं तं विद्धि पाण्डव | न ह्यसंन्यस्तसङ्कल्पो योगी भवति कश्चन ||2||',
    transliteration: 'yaṁ sannyāsam iti prāhur yogaṁ taṁ viddhi pāṇḍava na hyasannyasta-saṅkalpo yogī bhavati kaśhchana',
    indonesianTranslation: 'Oh Arjuna, ketahuilah bahwa apa yang disebut pelepasan (Sannyasa) sesungguhnya adalah Yoga. Sebab tidak seorang pun menjadi Yogi tanpa melepaskan keinginan pribadi.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/006_002.mp3',
  ),

  // Chapter 6, Verse 3
  SlokaModel(
    chapter: 6,
    verse: 3,
    sanskritText: 'आरुरुक्षोर्मुनेर्योगं कर्म कारणमुच्यते | योगारूढस्य तस्यैव शमः कारणमुच्यते ||3||',
    transliteration: 'ārurukṣhor muner yogaṁ karma kāraṇam uchyate yogārūḍhasya tasyaiva śhamaḥ kāraṇam uchyate',
    indonesianTranslation: 'Bagi orang bijak yang ingin mencapai Yoga, tindakan adalah sarana. Bagi yang telah mencapai Yoga, ketenangan pikiran adalah sarana.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/006_003.mp3',
  ),

  // Chapter 6, Verse 4
  SlokaModel(
    chapter: 6,
    verse: 4,
    sanskritText: 'यदा हि नेन्द्रियार्थेषु न कर्मस्वनुषज्जते | सर्वसङ्कल्पसंन्यासी योगारूढस्तदोच्यते ||4||',
    transliteration: 'yadā hi nendriyārtheṣhu na karmasv anuṣhajjate sarva-saṅkalpa-sannyāsī yogārūḍhas tadocyate',
    indonesianTranslation: 'Ketika seseorang tidak terikat pada objek indria atau tindakan, dan telah melepaskan semua keinginan, ia disebut telah mencapai Yoga.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/006_004.mp3',
  ),

  // Chapter 6, Verse 5
  SlokaModel(
    chapter: 6,
    verse: 5,
    sanskritText: 'उद्धरेदात्मनात्मानं नात्मानमवसादयेत् | आत्मैव ह्यात्मनो बन्धुरात्मैव रिपुरात्मनः ||5||',
    transliteration: 'uddhared ātmanātmānaṁ nātmānam avasādayet ātmaiva hyātmano bandhur ātmaiva ripur ātmanaḥ',
    indonesianTranslation: 'Angkatlah dirimu sendiri dengan kekuatan pikiran, dan jangan merendahkan diri. Pikiran adalah sahabat sekaligus musuh bagi diri sendiri.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/006_005.mp3',
  ),
  // Chapter 7, Verse 1
  SlokaModel(
    chapter: 7,
    verse: 1,
    sanskritText: 'श्रीभगवानुवाच | मय्यासक्तमनाः पार्थ योगं युञ्जन्मदाश्रयः | असंशयं समग्रं मां यथा ज्ञास्यसि तच्छृणु ||1||',
    transliteration: 'śhrī bhagavān uvācha mayyāsakta-manāḥ pārtha yogaṁ yuñjan mad-āśhrayaḥ asanśhayaṁ samagraṁ māṁ yathā jñāsyasi tach chhṛiṇu',
    indonesianTranslation: 'Tuhan Yang Maha Kuasa bersabda: Oh Arjuna, dengarkanlah bagaimana dengan pikiran yang melekat pada-Ku dan berlindung pada-Ku, engkau akan mengenal-Ku sepenuhnya tanpa keraguan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/007_001.mp3',
  ),

  // Chapter 7, Verse 2
  SlokaModel(
    chapter: 7,
    verse: 2,
    sanskritText: 'ज्ञानं तेऽहं सविज्ञानमिदं वक्ष्याम्यशेषतः | यज्ज्ञात्वा नेह भूयोऽन्यज्ज्ञातव्यमवशिष्यते ||2||',
    transliteration: 'jñānaṁ te haṁ sa-vijñānam idaṁ vakṣhyāmy aśheṣhataḥ yaj jñātvā neha bhūyo nyaj jñātavyam avaśhiṣhyate',
    indonesianTranslation: 'Aku akan mengajarkan kepadamu pengetahuan beserta kebijaksanaan yang lengkap, yang setelah diketahui tidak ada lagi yang perlu diketahui di dunia ini.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/007_002.mp3',
  ),

  // Chapter 7, Verse 3
  SlokaModel(
    chapter: 7,
    verse: 3,
    sanskritText: 'मनुष्याणां सहस्रेषु कश्चिद्यतति सिद्धये | यततामपि सिद्धानां कश्चिन्मां वेत्ति तत्त्वतः ||3||',
    transliteration: 'manuṣhyāṇāṁ sahasreṣhu kaśhchid yatati siddhaye yatatām api siddhānāṁ kaśhchin māṁ vetti tattvataḥ',
    indonesianTranslation: 'Dari ribuan manusia, mungkin hanya satu yang berusaha mencapai kesempurnaan. Dan di antara mereka yang telah mencapai kesempurnaan, jarang ada yang mengenal-Ku secara hakiki.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/007_003.mp3',
  ),

  // Chapter 7, Verse 4
  SlokaModel(
    chapter: 7,
    verse: 4,
    sanskritText: 'भूमिरापोऽनलो वायुः खं मनो बुद्धिरेव च | अहङ्कार इतीयं मे भिन्ना प्रकृतिरष्टधा ||4||',
    transliteration: 'bhūmir āpo nalo vāyuḥ khaṁ mano buddhir eva cha ahankāra itīyaṁ me bhinnā prakṛitir aṣhṭadhā',
    indonesianTranslation: 'Bumi, air, api, udara, ether, pikiran, kecerdasan, dan ego - kedelapan ini adalah bagian-bagian terpisah dari energi material-Ku.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/007_004.mp3',
  ),

  // Chapter 7, Verse 5
  SlokaModel(
    chapter: 7,
    verse: 5,
    sanskritText: 'अपरेयमितस्त्वन्यां प्रकृतिं विद्धि मे पराम् | जीवभूतां महाबाहो ययेदं धार्यते जगत् ||5||',
    transliteration: 'apareyam itas tv anyāṁ prakṛitiṁ viddhi me parām jīva-bhūtāṁ mahā-bāho yayedaṁ dhāryate jagat',
    indonesianTranslation: 'Selain energi material ini, oh Arjuna, ada energi spiritual-Ku yang lebih tinggi yang terdiri dari makhluk hidup yang menopang dunia ini.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/007_005.mp3',
  ),
  // Chapter 8, Verse 1
  SlokaModel(
    chapter: 8,
    verse: 1,
    sanskritText: 'अर्जुन उवाच | किं तद्ब्रह्म किमध्यात्मं किं कर्म पुरुषोत्तम | अधिभूतं च किं प्रोक्तमधिदैवं किमुच्यते ||1||',
    transliteration: 'arjuna uvācha kiṁ tad brahma kim adhyātmaṁ kiṁ karma puruṣhottama adhibhūtaṁ cha kiṁ proktam adhidaivaṁ kim uchyate',
    indonesianTranslation: 'Arjuna berkata: Wahai Purushottama, apakah Brahman itu? Apa itu Adhyatma? Apa yang dimaksud dengan Karma? Apakah yang disebut Adhibhuta dan Adhidaiva?',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/008_001.mp3',
  ),

  // Chapter 8, Verse 2
  SlokaModel(
    chapter: 8,
    verse: 2,
    sanskritText: 'अधियज्ञः कथं कोऽत्र देहेऽस्मिन्मधुसूदन | प्रयाणकाले च कथं ज्ञेयोऽसि नियतात्मभिः ||2||',
    transliteration: 'adhiyajñaḥ kathaṁ ko \'tra dehe \'smin madhusūdana prayāṇa-kāle cha kathaṁ jñeyo \'si niyatātmabhiḥ',
    indonesianTranslation: 'Siapakah Adhiyajna dan bagaimana Ia berdiam dalam tubuh ini, oh Madhusudana? Bagaimana Engkau dapat dikenal pada saat kematian oleh orang yang terkendali pikirannya?',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/008_002.mp3',
  ),

  // Chapter 8, Verse 3
  SlokaModel(
    chapter: 8,
    verse: 3,
    sanskritText: 'श्रीभगवानुवाच | अक्षरं ब्रह्म परमं स्वभावोऽध्यात्ममुच्यते | भूतभावोद्भवकरो विसर्गः कर्मसंज्ञितः ||3||',
    transliteration: 'śhrī bhagavān uvācha akṣharaṁ brahma paramaṁ svabhāvo \'dhyātmam uchyate bhūta-bhāvodbhava-karo visargaḥ karma-sanjñitaḥ',
    indonesianTranslation: 'Tuhan bersabda: Brahman yang tak termusnahkan adalah Yang Maha Tinggi. Sifat hakiki-Nya disebut Adhyatma. Karma adalah proses kreatif yang menghasilkan kelahiran makhluk hidup.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/008_003.mp3',
  ),

  // Chapter 8, Verse 4
  SlokaModel(
    chapter: 8,
    verse: 4,
    sanskritText: 'अधिभूतं क्षरो भावः पुरुषश्चाधिदैवतम् | अधियज्ञोऽहमेवात्र देहे देहभृतां वर ||4||',
    transliteration: 'adhibhūtaṁ kṣharo bhāvaḥ puruṣhaśh chādhidaivatam adhiyajño \'ham evātra dehe deha-bhṛitāṁ vara',
    indonesianTranslation: 'Unsur fisik yang fana disebut Adhibhuta. Bentuk kosmik Tuhan adalah Adhidaiva. Aku sendiri adalah Adhiyajna yang berdiam dalam tubuh, oh Arjuna.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/008_004.mp3',
  ),

  // Chapter 8, Verse 5
  SlokaModel(
    chapter: 8,
    verse: 5,
    sanskritText: 'अन्तकाले च मामेव स्मरन्मुक्त्वा कलेवरम् | यः प्रयाति स मद्भावं याति नास्त्यत्र संशयः ||5||',
    transliteration: 'anta-kāle cha mām eva smaran muktvā kalevaram yaḥ prayāti sa mad-bhāvaṁ yāti nāsty atra sanśhayaḥ',
    indonesianTranslation: 'Siapa yang meninggalkan tubuh sambil mengingat-Ku pada saat kematian, ia akan mencapai sifat-Ku. Tentang ini tidak ada keraguan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/008_005.mp3',
  ),
  // Chapter 9, Verse 1
  SlokaModel(
    chapter: 9,
    verse: 1,
    sanskritText: 'श्रीभगवानुवाच | इदं तु ते गुह्यतमं प्रवक्ष्याम्यनसूयवे | ज्ञानं विज्ञानसहितं यज्ज्ञात्वा मोक्ष्यसेऽशुभात् ||1||',
    transliteration: 'śhrī bhagavān uvācha idaṁ tu te guhyatamaṁ pravakṣhyāmy anasūyave jñānaṁ vijñāna-sahitaṁ yaj jñātvā mokṣhyase \'śhubhāt',
    indonesianTranslation: 'Tuhan bersabda: Kepadamu yang tidak iri hati, Aku akan mengungkapkan pengetahuan rahasia ini yang disertai dengan kebijaksanaan. Dengan mengetahuinya, engkau akan bebas dari penderitaan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/009_001.mp3',
  ),

  // Chapter 9, Verse 2
  SlokaModel(
    chapter: 9,
    verse: 2,
    sanskritText: 'राजविद्या राजगुह्यं पवित्रमिदमुत्तमम् | प्रत्यक्षावगमं धर्म्यं सुसुखं कर्तुमव्ययम् ||2||',
    transliteration: 'rāja-vidyā rāja-guhyaṁ pavitram idam uttamam pratyakṣhāvagamaṁ dharmyaṁ su-sukhaṁ kartum avyayam',
    indonesianTranslation: 'Ini adalah pengetahuan kerajaan, rahasia kerajaan, pembersih yang tertinggi. Dapat dipahami secara langsung, sesuai dengan dharma, sangat menyenangkan untuk dipraktikkan, dan tak terbatas.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/009_002.mp3',
  ),

  // Chapter 9, Verse 3
  SlokaModel(
    chapter: 9,
    verse: 3,
    sanskritText: 'अश्रद्दधानाः पुरुषा धर्मस्यास्य परन्तप | अप्राप्य मां निवर्तन्ते मृत्युसंसारवर्त्मनि ||3||',
    transliteration: 'aśhraddadhānāḥ puruṣhā dharmasyāsya parantapa aprāpya māṁ nivartante mṛityu-saṁsāra-vartmani',
    indonesianTranslation: 'Orang yang tidak percaya pada dharma ini, oh Arjuna, tidak mencapai-Ku dan kembali ke siklus kelahiran dan kematian.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/009_003.mp3',
  ),

  // Chapter 9, Verse 4
  SlokaModel(
    chapter: 9,
    verse: 4,
    sanskritText: 'मया ततमिदं सर्वं जगदव्यक्तमूर्तिना | मत्स्थानि सर्वभूतानि न चाहं तेष्ववस्थितः ||4||',
    transliteration: 'mayā tatam idaṁ sarvaṁ jagad avyakta-mūrtinā mat-sthāni sarva-bhūtāni na chāhaṁ teṣhv avasthitaḥ',
    indonesianTranslation: 'Seluruh alam semesta ini dipenuhi oleh-Ku dalam bentuk tak termanifestasi. Semua makhluk ada dalam-Ku, tetapi Aku tidak berada dalam mereka.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/009_004.mp3',
  ),

  // Chapter 9, Verse 5
  SlokaModel(
    chapter: 9,
    verse: 5,
    sanskritText: 'न च मत्स्थानि भूतानि पश्य मे योगमैश्वरम् | भूतभृन्न च भूतस्थो ममात्मा भूतभावनः ||5||',
    transliteration: 'na cha mat-sthāni bhūtāni paśhya me yogam aiśhvaram bhūta-bhṛin na cha bhūta-stho mamātmā bhūta-bhāvanaḥ',
    indonesianTranslation: 'Lihatlah kekuatan mistik-Ku: Meskipun Aku memelihara semua makhluk dan berada di mana-mana, diri-Ku tidak berada dalam mereka, karena Aku adalah sumber segala ciptaan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/009_005.mp3',
  ),
  // Chapter 10, Verse 1
  SlokaModel(
    chapter: 10,
    verse: 1,
    sanskritText: 'श्रीभगवानुवाच | भूय एव महाबाहो शृणु मे परमं वचः | यत्तेऽहं प्रीयमाणाय वक्ष्यामि हितकाम्यया ||1||',
    transliteration: 'śhrī bhagavān uvācha bhūya eva mahā-bāho śhṛiṇu me paramaṁ vachaḥ yat te \'haṁ prīyamāṇāya vakṣhyāmi hita-kāmyayā',
    indonesianTranslation: 'Tuhan bersabda: Sekali lagi, oh Arjuna, dengarkanlah kata-kata-Ku yang tertinggi yang Kuucapkan untuk kebaikanmu karena Aku senang padamu.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/010_001.mp3',
  ),

  // Chapter 10, Verse 2
  SlokaModel(
    chapter: 10,
    verse: 2,
    sanskritText: 'न मे विदुः सुरगणाः प्रभवं न महर्षयः | अहमादिर्हि देवानां महर्षीणां च सर्वशः ||2||',
    transliteration: 'na me viduḥ sura-gaṇāḥ prabhavaṁ na maharṣhayaḥ aham ādir hi devānāṁ maharṣhīṇāṁ cha sarvaśhaḥ',
    indonesianTranslation: 'Para dewa maupun resi agung tidak mengetahui asal-usul-Ku, karena Aku adalah sumber semua dewa dan resi.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/010_002.mp3',
  ),

  // Chapter 10, Verse 3
  SlokaModel(
    chapter: 10,
    verse: 3,
    sanskritText: 'यो मामजमनादिं च वेत्ति लोकमहेश्वरम् | असंमूढः स मर्त्येषु सर्वपापैः प्रमुच्यते ||3||',
    transliteration: 'yo mām ajam anādiṁ cha vetti loka-maheśhvaram asammūḍhaḥ sa martyeṣhu sarva-pāpaiḥ pramuchyate',
    indonesianTranslation: 'Ia yang mengenal-Ku sebagai yang tak dilahirkan, tanpa awal, Tuhan semesta alam, terbebas dari segala dosa di antara manusia yang tersesat.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/010_003.mp3',
  ),

  // Chapter 10, Verse 4
  SlokaModel(
    chapter: 10,
    verse: 4,
    sanskritText: 'बुद्धिर्ज्ञानमसंमोहः क्षमा सत्यं दमः शमः | सुखं दुःखं भवोऽभावो भयं चाभयमेव च ||4||',
    transliteration: 'buddhir jñānam asammohaḥ kṣhamā satyaṁ damaḥ śhamaḥ sukhaṁ duḥkhaṁ bhavo \'bhāvo bhayaṁ chābhayam eva cha',
    indonesianTranslation: 'Kecerdasan, pengetahuan, kebijaksanaan, kesabaran, kejujuran, pengendalian diri, ketenangan, kebahagiaan, penderitaan, kelahiran, kematian, ketakutan, dan keberanian - semua ini berasal dari-Ku.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/010_004-005.mp3',
  ),

  // Chapter 10, Verse 5
  SlokaModel(
    chapter: 10,
    verse: 5,
    sanskritText: 'अहिंसा समता तुष्टिस्तपो दानं यशोऽयशः | भवन्ति भावा भूतानां मत्त एव पृथग्विधाः ||5||',
    transliteration: 'ahiṁsā samatā tuṣhṭis tapo dānaṁ yaśho \'yaśhaḥ bhavanti bhāvā bhūtānāṁ matta eva pṛithag-vidhāḥ',
    indonesianTranslation: 'Tanpa kekerasan, kesetaraan, kepuasan, pertapaan, amal, kemuliaan dan aib - berbagai sifat makhluk hidup berasal dari-Ku saja.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/010_004-005.mp3',
  ),
  // CHAPTER 11
  SlokaModel(
    chapter: 11,
    verse: 1,
    sanskritText: 'अर्जुन उवाच | मदनुग्रहाय परमं गुह्यमध्यात्मसंज्ञितम् | यत्त्वयोक्तं वचस्तेन मोहोऽयं विगतो मम ||1||',
    transliteration: 'arjuna uvācha mad-anugrahāya paramaṁ guhyam adhyātma-saṁjñitam yat tvayoktaṁ vachas tena moho \'yaṁ vigato mama',
    indonesianTranslation: 'Arjuna berkata: Engkau telah mengungkapkan rahasia spiritual yang paling rahasia ini sebagai karunia kepadaku. Dengan penjelasan-Mu, ilusiku sekarang telah hilang.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/011_001.mp3',
  ),
  SlokaModel(
    chapter: 11,
    verse: 2,
    sanskritText: 'भवाप्ययौ हि भूतानां श्रुतौ विस्तरशो मया | त्वत्तः कमलपत्राक्ष माहात्म्यमपि चाव्ययम् ||2||',
    transliteration: 'bhavāpyayau hi bhūtānāṁ śhrutau vistaraśho mayā tvattaḥ kamala-patrākṣha māhātmyam api chāvyayam',
    indonesianTranslation: 'Wahai Krishna, yang bermata seperti kelopak teratai, aku telah mendengar dari-Mu secara rinci tentang kelahiran dan kehancuran makhluk hidup, dan juga tentang kemuliaan-Mu yang kekal.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/011_002.mp3',
  ),
  SlokaModel(
    chapter: 11,
    verse: 3,
    sanskritText: 'एवमेतद्यथात्थ त्वमात्मानं परमेश्वर | द्रष्टुमिच्छामि ते रूपमैश्वरं पुरुषोत्तम ||3||',
    transliteration: 'evam etad yathāttha tvam ātmānaṁ parameśhvara draṣhṭum ichchhāmi te rūpam aiśhvaraṁ puruṣhottama',
    indonesianTranslation: 'Wahai Tuhan Yang Maha Esa, seperti yang Engkau nyatakan tentang diri-Mu, aku ingin melihat bentuk ilahi-Mu, wahai Purusha Tertinggi.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/011_003.mp3',
  ),
  SlokaModel(
    chapter: 11,
    verse: 4,
    sanskritText: 'मन्यसे यदि तच्छक्यं मया द्रष्टुमिति प्रभो | योगेश्वर ततो मे त्वं दर्शयात्मानमव्ययम् ||4||',
    transliteration: 'manyase yadi tach chhakyaṁ mayā draṣhṭum iti prabho yogeśhvara tato me tvaṁ darśhayātmānam avyayam',
    indonesianTranslation: 'Jika Engkau berpikir bahwa aku mampu melihat bentuk ilahi-Mu, wahai Tuhan, penguasa segala kekuatan mistik, maka tunjukkanlah diri-Mu yang kekal itu kepadaku.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/011_004.mp3',
  ),
  SlokaModel(
    chapter: 11,
    verse: 5,
    sanskritText: 'श्रीभगवानुवाच | पश्य मे पार्थ रूपाणि शतशोऽथ सहस्रशः | नानाविधानि दिव्यानि नानावर्णाकृतीनि च ||5||',
    transliteration: 'śhrī bhagavān uvācha paśhya me pārtha rūpāṇi śataśho \'tha sahasraśaḥ nānā-vidhāni divyāni nānā-varṇākṛitīni cha',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Wahai Arjuna, lihatlah berbagai bentuk-Ku, dalam ratusan dan ribuan variasi, berbagai macam bentuk ilahi dengan berbagai warna dan bentuk.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/011_005.mp3',
  ),

  // CHAPTER 12
  SlokaModel(
    chapter: 12,
    verse: 1,
    sanskritText: 'अर्जुन उवाच | एवं सततयुक्ता ये भक्तास्त्वां पर्युपासते | ये चाप्यक्षरमव्यक्तं तेषां के योगवित्तमाः ||1||',
    transliteration: 'arjuna uvācha evaṁ satata-yuktā ye bhaktās tvāṁ paryupāsate ye chāpy akṣharam avyaktaṁ teṣhāṁ ke yoga-vittamāḥ',
    indonesianTranslation: 'Arjuna berkata: Di antara para penyembah yang selalu tekun dan yang menyembah Engkau sebagai Yang Mutlak atau Yang Tak Terwujud, siapakah yang lebih memahami yoga?',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/012_001.mp3',
  ),
  SlokaModel(
    chapter: 12,
    verse: 2,
    sanskritText: 'श्रीभगवानुवाच | मय्यावेश्य मनो ये मां नित्ययुक्ता उपासते | श्रद्धया परयोपेतास्ते मे युक्ततमा मताः ||2||',
    transliteration: 'śhrī bhagavān uvācha mayy āveśhya mano ye māṁ nitya-yuktā upāsate śhraddhayā parayopetās te me yukta-tamā matāḥ',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Mereka yang memusatkan pikiran mereka pada-Ku dan selalu menyembah-Ku dengan keyakinan teguh, mereka Kuanggap paling sempurna dalam yoga.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/012_002.mp3',
  ),
  SlokaModel(
    chapter: 12,
    verse: 3,
    sanskritText: 'ये त्वक्षरमनिर्देश्यमव्यक्तं पर्युपासते | सर्वत्रगमचिन्त्यं च कूटस्थमचलं ध्रुवम् ||3||',
    transliteration: 'ye tv akṣharam anirdeśhyam avyaktaṁ paryupāsate sarvatra-gam achintyaṁ cha kūṭa-stham achalaṁ dhruvam',
    indonesianTranslation: 'Tetapi mereka yang menyembah Yang Tak Terwujud, Yang Tak Terdefinisi, Yang Maha Hadir, Yang Tak Terpikirkan, Yang Tak Berubah, Yang Kekal dan Tak Bergeming,',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/012_003.mp3',
  ),
  SlokaModel(
    chapter: 12,
    verse: 4,
    sanskritText: 'संनियम्येन्द्रियग्रामं सर्वत्र समबुद्धयः | ते प्राप्नुवन्ति मामेव सर्वभूतहिते रताः ||4||',
    transliteration: 'sanniyamyendriya-grāmaṁ sarvatra sama-buddhayaḥ te prāpnuvanti mām eva sarva-bhūta-hite ratāḥ',
    indonesianTranslation: 'Dengan mengendalikan indria-indria mereka dan memandang semua sama rata, serta bergembira dalam kesejahteraan semua makhluk, mereka juga akan mencapai-Ku.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/012_004.mp3',
  ),
  SlokaModel(
    chapter: 12,
    verse: 5,
    sanskritText: 'क्लेशोऽधिकतरस्तेषामव्यक्तासक्तचेतसाम् | अव्यक्ता हि गतिर्दुःखं देहवद्भिरवाप्यते ||5||',
    transliteration: 'kleśho \'dhikataras teṣhām avyaktāsakta-chetasām avyaktā hi gatir duḥkhaṁ dehavadbhir avāpyate',
    indonesianTranslation: 'Bagi mereka yang pikirannya terikat pada Yang Tak Terwujud, perjuangannya lebih besar, karena jalan Yang Tak Terwujud sulit dicapai oleh makhluk yang berjasmani.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/012_005.mp3',
  ),
  // CHAPTER 13
  SlokaModel(
    chapter: 13,
    verse: 1,
    sanskritText: 'अर्जुन उवाच | प्रकृतिं पुरुषं चैव क्षेत्रं क्षेत्रज्ञमेव च | एतद्वेदितुमिच्छामि ज्ञानं ज्ञेयं च केशव ||1||',
    transliteration: 'arjuna uvācha prakṛitiṁ puruṣhaṁ chaiva kṣhetraṁ kṣhetra-jñam eva cha etad veditum ichchhāmi jñānaṁ jñeyaṁ cha keśhava',
    indonesianTranslation: 'Arjuna berkata: Wahai Keshava, aku ingin memahami tentang alam material dan roh, bidang kegiatan dan pengenal bidang, pengetahuan dan objek pengetahuan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/013_001.mp3',
  ),
  SlokaModel(
    chapter: 13,
    verse: 2,
    sanskritText: 'श्रीभगवानुवाच | इदं शरीरं कौन्तेय क्षेत्रमित्यभिधीयते | एतद्यो वेत्ति तं प्राहुः क्षेत्रज्ञ इति तद्विदः ||2||',
    transliteration: 'śhrī bhagavān uvācha idaṁ śharīraṁ kaunteya kṣhetram ity abhidhīyate etad yo vetti taṁ prāhuḥ kṣhetra-jña iti tad-vidaḥ',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Wahai putra Kunti, badan ini disebut bidang kegiatan, dan dia yang mengenal badan ini disebut pengenal bidang oleh para bijak.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/013_002.mp3',
  ),
  SlokaModel(
    chapter: 13,
    verse: 3,
    sanskritText: 'क्षेत्रज्ञं चापि मां विद्धि सर्वक्षेत्रेषु भारत | क्षेत्रक्षेत्रज्ञयोर्ज्ञानं यत्तज्ज्ञानं मतं मम ||3||',
    transliteration: 'kṣhetra-jñaṁ chāpi māṁ viddhi sarva-kṣhetreṣhu bhārata kṣhetra-kṣhetra-jñayor jñānaṁ yat taj jñānaṁ mataṁ mama',
    indonesianTranslation: 'Wahai Bharata, ketahuilah bahwa Aku adalah Pengenal bidang dalam semua bidang. Pemahaman tentang bidang kegiatan dan pengenal bidang inilah yang Kuanggap sebagai pengetahuan sejati.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/013_003.mp3',
  ),
  SlokaModel(
    chapter: 13,
    verse: 4,
    sanskritText: 'तत्क्षेत्रं यच्च यादृक्च यद्विकारि यतश्च यत् | स च यो यत्प्रभावश्च तत्समासेन मे शृणु ||4||',
    transliteration: 'tat kṣhetraṁ yach cha yādṛik cha yad vikāri yataśh cha yat sa cha yo yat prabhāvaśh cha tat samāsena me śhṛiṇu',
    indonesianTranslation: 'Apa itu bidang kegiatan, bagaimana sifatnya, bagaimana perubahannya, dari mana asalnya, siapa pengenal bidang itu, dan apa pengaruhnya—dengarkan semua ini dariku secara ringkas.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/013_004.mp3',
  ),
  SlokaModel(
    chapter: 13,
    verse: 5,
    sanskritText: 'ऋषिभिर्बहुधा गीतं छन्दोभिर्विविधैः पृथक् | ब्रह्मसूत्रपदैश्चैव हेतुमद्भिर्विनिश्चितैः ||5||',
    transliteration: 'ṛiṣhibhir bahudhā gītaṁ chhandobhir vividhaiḥ pṛithak brahma-sūtra-padaiśh chaiva hetumadbhir viniśhchitaiḥ',
    indonesianTranslation: 'Pengetahuan ini telah dinyanyikan oleh para resi dalam berbagai cara, dalam berbagai nyanyian Veda, dan juga dalam sutra-sutra Brahma yang penuh alasan dan pasti.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/013_005.mp3',
  ),

  // CHAPTER 14
  SlokaModel(
    chapter: 14,
    verse: 1,
    sanskritText: 'श्रीभगवानुवाच | परं भूयः प्रवक्ष्यामि ज्ञानानां ज्ञानमुत्तमम् | यज्ज्ञात्वा मुनयः सर्वे परां सिद्धिमितो गताः ||1||',
    transliteration: 'śhrī bhagavān uvācha paraṁ bhūyaḥ pravakṣhyāmi jñānānāṁ jñānam uttamam yaj jñātvā munayaḥ sarve parāṁ siddhim ito gatāḥ',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Aku akan menjelaskan lagi pengetahuan yang paling tinggi di antara semua pengetahuan, dengan mengetahui mana semua orang bijak mencapai kesempurnaan tertinggi.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/014_001.mp3',
  ),
  SlokaModel(
    chapter: 14,
    verse: 2,
    sanskritText: 'इदं ज्ञानमुपाश्रित्य मम साधर्म्यमागताः | सर्गेऽपि नोपजायन्ते प्रलये न व्यथन्ति च ||2||',
    transliteration: 'idaṁ jñānam upāśhritya mama sādharmyam āgatāḥ sarge \'pi nopajāyante pralaye na vyathanti cha',
    indonesianTranslation: 'Dengan bersandar pada pengetahuan ini, mereka dapat mencapai sifat seperti-Ku dan tidak lahir pada saat penciptaan maupun terganggu pada saat pembubaran.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/014_002.mp3',
  ),
  SlokaModel(
    chapter: 14,
    verse: 3,
    sanskritText: 'मम योनिर्महद्ब्रह्म तस्मिन्गर्भं दधाम्यहम् | सम्भवः सर्वभूतानां ततो भवति भारत ||3||',
    transliteration: 'mama yonir mahad brahma tasmin garbhaṁ dadhāmy aham sambhavaḥ sarva-bhūtānāṁ tato bhavati bhārata',
    indonesianTranslation: 'Wahai Bharata, alam material yang agung adalah rahim-Ku, di dalamnya Aku menempatkan benih, dari mana semua makhluk lahir.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/014_003.mp3',
  ),
  SlokaModel(
    chapter: 14,
    verse: 4,
    sanskritText: 'सर्वयोनिषु कौन्तेय मूर्तयः सम्भवन्ति याः | तासां ब्रह्म महद्योनिरहं बीजप्रदः पिता ||4||',
    transliteration: 'sarva-yoniṣhu kaunteya mūrtayaḥ sambhavanti yāḥ tāsāṁ brahma mahad yonir ahaṁ bīja-pradaḥ pitā',
    indonesianTranslation: 'Wahai putra Kunti, semua bentuk kehidupan yang muncul dari berbagai jenis badan, alam material adalah ibu mereka, dan Aku adalah ayah yang memberikan benih.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/014_004.mp3',
  ),
  SlokaModel(
    chapter: 14,
    verse: 5,
    sanskritText: 'सत्त्वं रजस्तम इति गुणाः प्रकृतिसम्भवाः | निबध्नन्ति महाबाहो देहे देहिनमव्ययम् ||5||',
    transliteration: 'sattvaṁ rajas tama iti guṇāḥ prakṛiti-sambhavāḥ nibadhnanti mahā-bāho dehe dehinam avyayam',
    indonesianTranslation: 'Wahai Arjuna, ketiga sifat alam—kebaikan, gairah, dan kebodohan—muncul dari alam material dan mengikat roh yang kekal dalam badan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/014_005.mp3',
  ),

  // CHAPTER 15
  SlokaModel(
    chapter: 15,
    verse: 1,
    sanskritText: 'श्रीभगवानुवाच | ऊर्ध्वमूलमधःशाखमश्वत्थं प्राहुरव्ययम् | छन्दांसि यस्य पर्णानि यस्तं वेद स वेदवित् ||1||',
    transliteration: 'śhrī bhagavān uvācha ūrdhva-mūlam adhaḥ-śhākham aśhvatthaṁ prāhur avyayam chhandāṁsi yasya parṇāni yas taṁ veda sa veda-vit',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Ada pohon beringin yang akarnya mengarah ke atas dan cabangnya ke bawah, daunnya adalah mantra-mantra Veda. Siapa yang mengenal pohon ini adalah yang mengetahui Veda.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/015_001.mp3',
  ),
  SlokaModel(
    chapter: 15,
    verse: 2,
    sanskritText: 'अधश्चोर्ध्वं प्रसृतास्तस्य शाखा गुणप्रवृद्धा विषयप्रवालाः | अधश्च मूलान्यनुसन्ततानि कर्मानुबन्धीनि मनुष्यलोके ||2||',
    transliteration: 'adhaśh chordhvaṁ prasṛitās tasya śhākhā guṇa-pravṛiddhā viṣaya-pravālāḥ adhaśh cha mūlāny anusantatāni karmānubandhīni manuṣhya-loke',
    indonesianTranslation: 'Cabang-cabang pohon ini memanjang ke atas dan ke bawah, dipupuk oleh tiga sifat alam. Tunasnya adalah objek indria. Akar ini juga memanjang ke bawah, mengikat manusia pada dunia material.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/015_002.mp3',
  ),
  SlokaModel(
    chapter: 15,
    verse: 3,
    sanskritText: 'न रूपमस्येह तथोपलभ्यते नान्तो न चादिर्न च सम्प्रतिष्ठा | अश्वत्थमेनं सुविरूढमूलमसङ्गशस्त्रेण दृढेन छित्त्वा ||3||',
    transliteration: 'na rūpam asyeha tathopalabhyate nānto na chādir na cha sampratiṣhṭhā aśhvattham enaṁ su-virūḍha-mūlam asaṅga-śhastreṇa dṛiḍhena chhittvā',
    indonesianTranslation: 'Bentuk pohon ini tidak dapat dipahami dalam dunia ini, tidak ada awal maupun akhir, dan tidak ada fondasi. Dengan kapak ketidakmelekatan yang kuat, potonglah pohon beringin yang berakar kuat ini.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/015_003.mp3',
  ),
  SlokaModel(
    chapter: 15,
    verse: 4,
    sanskritText: 'ततः पदं तत्परिमार्गितव्यं यस्मिन्गता न निवर्तन्ति भूयः | तमेव चाद्यं पुरुषं प्रपद्ये यतः प्रवृत्तिः प्रसृता पुराणी ||4||',
    transliteration: 'tataḥ padaṁ tat parimārgitavyaṁ yasmin gatā na nivartanti bhūyaḥ tam eva chādyaṁ puruṣhaṁ prapadye yataḥ pravṛittiḥ prasṛitā purāṇī',
    indonesianTranslation: 'Kemudian carilah tempat itu yang setelah mencapainya seseorang tidak kembali lagi. Aku berlindung pada Purusha primordial itu dari mana segala sesuatu berasal sejak zaman dahulu.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/015_004.mp3',
  ),
  SlokaModel(
    chapter: 15,
    verse: 5,
    sanskritText: 'निर्मानमोहा जितसङ्गदोषा अध्यात्मनित्या विनिवृत्तकामाः | द्वन्द्वैर्विमुक्ताः सुखदुःखसंज्ञैर्गच्छन्त्यमूढाः पदमव्ययं तत् ||5||',
    transliteration: 'nir-māna-mohā jita-saṅga-doṣhā adhyātma-nityā vinivṛitta-kāmāḥ dvandvair vimuktāḥ sukha-duḥkha-saṁjñair gachchhanty amūḍhāḥ padam avyayaṁ tat',
    indonesianTranslation: 'Mereka yang bebas dari kesombongan dan khayalan, yang telah menaklukkan kejahatan pergaulan, yang abadi dalam pelayanan kepada Yang Mutlak, yang bebas dari keinginan, bebas dari dualitas suka dan duka, mencapai tempat yang kekal itu.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/015_005.mp3',
  ),

  // CHAPTER 16
  SlokaModel(
    chapter: 16,
    verse: 1,
    sanskritText: 'श्रीभगवानुवाच | अभयं सत्त्वसंशुद्धिर्ज्ञानयोगव्यवस्थितिः | दानं दमश्च यज्ञश्च स्वाध्यायस्तप आर्जवम् ||1||',
    transliteration: 'śhrī bhagavān uvācha abhayaṁ sattva-saṁśhuddhir jñāna-yoga-vyavasthitiḥ dānaṁ damaśh cha yajñaśh cha svādhyāyas tapa ārjavam',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Ketidakgentaran, penyucian diri, tekun dalam yoga pengetahuan, kedermawanan, pengendalian diri, pengorbanan, studi kitab suci, tapa, dan kejujuran.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/016_001.mp3',
  ),
  SlokaModel(
    chapter: 16,
    verse: 2,
    sanskritText: 'अहिंसा सत्यमक्रोधस्त्यागः शान्तिरपैशुनम् | दया भूतेष्वलोलुप्त्वं मार्दवं ह्रीरचापलम् ||2||',
    transliteration: 'ahiṁsā satyam akrodhas tyāgaḥ śhāntir apaiśhunam dayā bhūteṣhv aloluptvaṁ mārdavaṁ hrīr achāpalam',
    indonesianTranslation: 'Tanpa kekerasan, kebenaran, bebas dari kemarahan, pelepasan, kedamaian, tidak memfitnah, belas kasih kepada semua makhluk, tidak serakah, lembut, rendah hati, dan mantap.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/016_002.mp3',
  ),
  SlokaModel(
    chapter: 16,
    verse: 3,
    sanskritText: 'तेजः क्षमा धृतिः शौचमद्रोहो नातिमानिता | भवन्ति सम्पदं दैवीमभिजातस्य भारत ||3||',
    transliteration: 'tejaḥ kṣhamā dhṛitiḥ śhaucham adroho nāti-mānitā bhavanti sampadaṁ daivīm abhijātasya bhārata',
    indonesianTranslation: 'Keagungan, pengampunan, ketegaran, kemurnian, tidak iri hati, dan tidak sombong—semua ini adalah kekayaan ilahi, wahai Bharata.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/016_003.mp3',
  ),
  SlokaModel(
    chapter: 16,
    verse: 4,
    sanskritText: 'दम्भो दर्पोऽभिमानश्च क्रोधः पारुष्यमेव च | अज्ञानं चाभिजातस्य पार्थ सम्पदमासुरीम् ||4||',
    transliteration: 'dambho darpo \'bhimānaśh cha krodhaḥ pāruṣhyam eva cha ajñānaṁ chābhijātasya pārtha sampadam āsurīm',
    indonesianTranslation: 'Kemunafikan, kesombongan, keangkuhan, kemarahan, kekasaran, dan kebodohan—semua ini adalah kekayaan setan, wahai Partha.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/016_004.mp3',
  ),
  SlokaModel(
    chapter: 16,
    verse: 5,
    sanskritText: 'दैवी सम्पद्विमोक्षाय निबन्धायासुरी मता | मा शुचः सम्पदं दैवीमभिजातोऽसि पाण्डव ||5||',
    transliteration: 'daivī sampad vimokṣhāya nibandhāyāsurī matā mā śhuchaḥ sampadaṁ daivīm abhijāto \'si pāṇḍava',
    indonesianTranslation: 'Kekayaan ilahi membawa pada pembebasan, sedangkan kekayaan setan membelenggu. Jangan khawatir, wahai Pāṇḍava, engkau terlahir dengan kekayaan ilahi.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/016_005.mp3',
  ),

  // CHAPTER 17
  SlokaModel(
    chapter: 17,
    verse: 1,
    sanskritText: 'अर्जुन उवाच | ये शास्त्रविधिमुत्सृज्य यजन्ते श्रद्धयान्विताः | तेषां निष्ठा तु का कृष्ण सत्त्वमाहो रजस्तमः ||1||',
    transliteration: 'arjuna uvācha ye śhāstra-vidhim utsṛijya yajante śhraddhayānvitāḥ teṣhāṁ niṣhṭhā tu kā kṛiṣhṇa sattvam āho rajas tamaḥ',
    indonesianTranslation: 'Arjuna berkata: Wahai Krishna, bagaimana kedudukan mereka yang tidak mengikuti petunjuk kitab suci tetapi menyembah dengan keyakinan? Apakah mereka berada dalam kebaikan, gairah, atau kebodohan?',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/017_001.mp3',
  ),
  SlokaModel(
    chapter: 17,
    verse: 2,
    sanskritText: 'श्रीभगवानुवाच | त्रिविधा भवति श्रद्धा देहिनां सा स्वभावजा | सात्त्विकी राजसी चैव तामसी चेति तां शृणु ||2||',
    transliteration: 'śhrī bhagavān uvācha tri-vidhā bhavati śhraddhā dehināṁ sā svabhāva-jā sāttvikī rājasī chaiva tāmasī cheti tāṁ śhṛiṇu',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Keyakinan makhluk hidup terbagi tiga menurut sifat bawaan mereka—berkualitas kebaikan, gairah, atau kebodohan. Dengarkanlah penjelasannya.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/017_002.mp3',
  ),
  SlokaModel(
    chapter: 17,
    verse: 3,
    sanskritText: 'सत्त्वानुरूपा सर्वस्य श्रद्धा भवति भारत | श्रद्धामयोऽयं पुरुषो यो यच्छ्रद्धः स एव सः ||3||',
    transliteration: 'sattvānurūpā sarvasya śhraddhā bhavati bhārata śhraddhā-mayo \'yaṁ puruṣho yo yach-chhraddhaḥ sa eva saḥ',
    indonesianTranslation: 'Wahai Bharata, keyakinan setiap orang sesuai dengan sifat bawaannya. Seseorang terdiri dari keyakinannya; sebagaimana keyakinannya, demikianlah dirinya.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/017_003.mp3',
  ),
  SlokaModel(
    chapter: 17,
    verse: 4,
    sanskritText: 'यजन्ते सात्त्विका देवान्यक्षरक्षांसि राजसाः | प्रेतान्भूतगणांश्चान्ये यजन्ते तामसा जनाः ||4||',
    transliteration: 'yajante sāttvikā devān yakṣha-rakṣhāṁsi rājasāḥ pretān bhūta-gaṇāṁśh chānye yajante tāmasā janāḥ',
    indonesianTranslation: 'Orang dalam kebaikan menyembah para dewa; mereka yang dalam gairah menyembah makhluk halus dan raksasa; sedangkan mereka yang dalam kebodohan menyembah hantu dan roh-roh alam.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/017_004.mp3',
  ),
  SlokaModel(
    chapter: 17,
    verse: 5,
    sanskritText: 'अशास्त्रविहितं घोरं तप्यन्ते ये तपो जनाः | दम्भाहंकारसंयुक्ताः कामरागबलान्विताः ||5||',
    transliteration: 'aśhāstra-vihitaṁ ghoraṁ tapyante ye tapo janāḥ dambhāhaṅkāra-saṁyuktāḥ kāma-rāga-balānvitāḥ',
    indonesianTranslation: 'Mereka yang melakukan tapa yang kejam dan tidak sesuai dengan kitab suci, dilakukan karena kesombongan dan ego, digerakkan oleh nafsu dan keterikatan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/017_005.mp3',
  ),

  // CHAPTER 18
  SlokaModel(
    chapter: 18,
    verse: 1,
    sanskritText: 'अर्जुन उवाच | सन्न्यासस्य महाबाहो तत्त्वमिच्छामि वेदितुम् | त्यागस्य च हृषीकेश पृथक्केशिनिषूदन ||1||',
    transliteration: 'arjuna uvācha sannyāsasya mahā-bāho tattvam ichchhāmi veditum tyāgasya cha hṛiṣhīkeśha pṛithak keśhini-ṣhūdana',
    indonesianTranslation: 'Arjuna berkata: Wahai Hrishikesha, wahai pembunuh raksasa Kesi, aku ingin memahami perbedaan antara pelepasan (sannyasa) dan penghentian (tyaga).',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/018_001.mp3',
  ),
  SlokaModel(
    chapter: 18,
    verse: 2,
    sanskritText: 'श्रीभगवानुवाच | काम्यानां कर्मणां न्यासं सन्न्यासं कवयो विदुः | सर्वकर्मफलत्यागं प्राहुस्त्यागं विचक्षणाः ||2||',
    transliteration: 'śhrī bhagavān uvācha kāmyānāṁ karmaṇāṁ nyāsaṁ sannyāsaṁ kavayo viduḥ sarva-karma-phala-tyāgaṁ prāhus tyāgaṁ vichakṣhaṇāḥ',
    indonesianTranslation: 'Tuhan Yang Mahakuasa berkata: Para bijak memahami bahwa pelepasan tindakan yang diinginkan adalah sannyasa, sedangkan orang bijak menyatakan bahwa penghentian hasil semua tindakan adalah tyaga.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/018_002.mp3',
  ),
  SlokaModel(
    chapter: 18,
    verse: 3,
    sanskritText: 'त्याज्यं दोषवदित्येके कर्म प्राहुर्मनीषिणः | यज्ञदानतपःकर्म न त्याज्यमिति चापरे ||3||',
    transliteration: 'tyājyaṁ doṣha-vad ity eke karma prāhur manīṣhiṇaḥ yajña-dāna-tapaḥ-karma na tyājyam iti chāpare',
    indonesianTranslation: 'Beberapa orang bijak mengatakan bahwa semua tindakan harus dihentikan sebagai sesuatu yang buruk, sedangkan yang lain mengatakan bahwa tindakan pengorbanan, kedermawanan, dan tapa tidak boleh dihentikan.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/018_003.mp3',
  ),
  SlokaModel(
    chapter: 18,
    verse: 4,
    sanskritText: 'निश्चयं शृणु मे तत्र त्यागे भरतसत्तम | त्यागो हि पुरुषव्याघ्र त्रिविधः संप्रकीर्तितः ||4||',
    transliteration: 'niśhchayaṁ śhṛiṇu me tatra tyāge bharata-sattama tyāgo hi puruṣha-vyāghra tri-vidhaḥ samprakīrtitaḥ',
    indonesianTranslation: 'Wahai yang terbaik di antara Bharata, dengarkan keputusan-Ku tentang penghentian. Penghentian dinyatakan sebagai tiga jenis, wahai harimau di antara manusia.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/018_004.mp3',
  ),
  SlokaModel(
    chapter: 18,
    verse: 5,
    sanskritText: 'यज्ञदानतपःकर्म न त्याज्यं कार्यमेव तत् | यज्ञो दानं तपश्चैव पावनानि मनीषिणाम् ||5||',
    transliteration: 'yajña-dāna-tapaḥ-karma na tyājyaṁ kāryam eva tat yajño dānaṁ tapaśh chaiva pāvanāni manīṣhiṇām',
    indonesianTranslation: 'Tindakan pengorbanan, kedermawanan, dan tapa tidak boleh dihentikan; harus dilakukan. Pengorbanan, kedermawanan, dan tapa menyucikan orang bijak.',
    audioUrl: 'https://www.holy-bhagavad-gita.org/public/audio/018_005.mp3',
  ),
];