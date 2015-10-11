/* config.js */
params.PageBgColor = params.PageBgColor||"#d7d7d7";
slideshow_css = '$CssPath$style.css';
params.addCss='@import url("https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&subset=latin,latin-ext,cyrillic");';

thumbs = {margin: 5, padding: 5};
var border = { 'top': 5, 'right': 5, 'bottom': 5, 'left': 5 };

if (!parseInt(params.noFrame)){
    // frame border+shadow
    params.Border =  "5px solid #FFFFFF";
    files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-frame.css', 'dest': slideshow_css, 'filters': ['params'] } );
}

files.push({ 'src': 'backgnd/'+params.TemplateName+'/bullet.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/arrows.png' });
files.push({ 'src': 'common/index.html', 'filters': ['params'] });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/play.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/pause.png' });


if (params.ShowTooltips){
	params.ThumbWidthHalf = Math.round(params.ThumbWidth/2);
	files.push(	{ 'src': 'backgnd/'+params.TemplateName+'/triangle-'+params.TooltipPos+'.png', dest: '$ImgPath$triangle.png' } );
	files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-tooltip.css', 'dest': slideshow_css, 'filters': ['params'] } );
}

// call this function at the end of each template
finalize();
