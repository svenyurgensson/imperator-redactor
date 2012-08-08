# -*- encoding : utf-8 -*-

ImperatorRedactor.config do |config|
  # Assing helper url method to get index which returns json:
  # [
  #   { "thumb": "/images/12/thumb.jpg", "image": "/images/12/middle.jpg" },
  #   ....
  # ]
  # uncomment this:
  # config.images_index_path_method  = :admin_images_path

  # Assign helper url method to upload and create image
  # should return json:
  #    { "filelink": "/images/12/middle.jpg"}
  # uncomment this:
  # config.images_create_path_method = :admin_images_path
end

Rails.application.config.assets[:precompile].push *[
  "imperator-redactor/redactor.css",
  "imperator-redactor/docstyle.css",
  "imperator-redactor/style.css",
  "imperator-redactor/wym.css",

  "imperator-redactor/redactor.js",

  # Uncomment strings with language file name
  # if you need one of them

#  "imperator-redactor/langs/bg.js",
#  "imperator-redactor/langs/by.js",
#  "imperator-redactor/langs/cs.js",
#  "imperator-redactor/langs/de.js",
#  "imperator-redactor/langs/en.js",
#  "imperator-redactor/langs/eo.js",
#  "imperator-redactor/langs/es.js",
#  "imperator-redactor/langs/fa.js",
#  "imperator-redactor/langs/fi.js",
#  "imperator-redactor/langs/fr.js",
#  "imperator-redactor/langs/hr.js",
#  "imperator-redactor/langs/hu.js",
#  "imperator-redactor/langs/it.js",
#  "imperator-redactor/langs/ja.js",
#  "imperator-redactor/langs/ko.js",
#  "imperator-redactor/langs/lv.js",
#  "imperator-redactor/langs/nl.js",
#  "imperator-redactor/langs/pl.js",
#  "imperator-redactor/langs/pt_br.js",
  "imperator-redactor/langs/ru.js",
#  "imperator-redactor/langs/sk.js",
#  "imperator-redactor/langs/sq.js",
#  "imperator-redactor/langs/tr.js",
#  "imperator-redactor/langs/ua.js",
#  "imperator-redactor/langs/zh_cn.js",
]
