if [ "$1" == "prod" ];then
    mode="-e production"
else
    mode=""
fi

mkdir -p ./themes/uBlogger
cp -r ../archetypes ../assets ../i18n ../images ../layouts ./themes/uBlogger

hugo server -D --disableFastRender ${mode}