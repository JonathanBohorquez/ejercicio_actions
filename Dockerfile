FROM solr:8.11

# Copia la configuración del core
#COPY solrconfig /var/solr/data/mi_core/conf/
#COPY core.properties /var/solr/data/mi_core/

# Da permisos adecuados
RUN chown -R solr:solr /var/solr

# Expón el puerto
EXPOSE 8983

# Comando por defecto
CMD ["solr", "-f"]