

CKEDITOR.editorConfig = function( config )

{

        // Define changes to default configuration here. For example:

    config.language = 'en';

    

        // config.uiColor = '#AADC6E';

        

        config.toolbar_Full = [

            ['Source','-','Save','NewPage','Preview','-','Templates'],

            ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],

            ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],

            '/',

            ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],

            ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],

            ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],

            ['BidiLtr', 'BidiRtl' ],

            ['Link','Unlink','Anchor'],

            ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak','Iframe'],

            '/',

            ['Styles','Format','Font','FontSize'],

            ['TextColor','BGColor'],

            ['Maximize', 'ShowBlocks','-','About']

            ];

        

        config.entities = false;

        //config.entities_latin = false;

        



        config.filebrowserBrowseUrl = 'http://www.actmienbac.vn/admin/view/javascript/ckfinder/ckfinder.html';



        config.filebrowserImageBrowseUrl = 'http://www.actmienbac.vn/admin/view/javascript/ckfinder/ckfinder.html?type=Images';



        config.filebrowserFlashBrowseUrl = 'http://www.actmienbac.vn/admin/view/javascript/ckfinder/ckfinder.html?type=Flash';



        config.filebrowserUploadUrl = 'http://www.actmienbac.vn/admin/view/javascript/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';



        config.filebrowserImageUploadUrl = 'http://www.actmienbac.vn/admin/view/javascript/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';



        config.filebrowserFlashUploadUrl = 'http://www.actmienbac.vn/admin/view/javascript/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';



};  