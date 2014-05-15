;; org-mode publishing
(setq org-publish-project-alist
      '(

        ("org-0pt1mates" 
         :base-directory "~/ws-0pt1mates/web/org/"
         :base-extension "org"
         ;; Path to jekyll project
         :publishing-directory "~/ws-0pt1mates/web/jekyll/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4  ; Just the default for this project.
         :html-extension "html"
         :body-only t ;; Only export section between <body> </body>
         )

        ("org-static-0pt1mates"
         :base-directory "~/ws-0pt1mates/web/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/ws-0pt1mates/web/"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("0pt1mates" :components ("org-0pt1mates" "org-static-0pt1mates"))

        ))
