FROM directus/directus:10.11.1

USER root
RUN corepack enable
USER node

# XXX(slava): there's a way to reduce docker image size by prebuilding the extensions. 
# https://github.com/tractr/directus-sync/issues/63#issuecomment-2096657924

# Install Directus extensions
RUN pnpm install directus-extension-display-link@1.6.1 \ 
      directus-extension-computed-interface@1.9.0 \
      directus-extension-models@2.5.2 \
      directus-extension-masked-interface@1.1.0 \
      directus-extension-sync@1.1.6 \
      directus-sync@1.5.3