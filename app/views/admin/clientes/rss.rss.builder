xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Campinapolis.com"
    xml.description "O Portal do Comércio da Cidade"
    xml.link root_url
    @admin_clientes.each do |cliente|
      guid = (0...8).map { (65 + rand(26)).chr }.join
      xml.item do
        xml.title cliente.empresa
        xml.description cliente.endereco
        xml.pubDate cliente.created_at.to_s(:rfc822)
        xml.link "https://campinapolis.com/rss_v1/cliente/"+cliente.id.to_s
        #xml.guid "https://campinapolis.com/rss_v1/cliente/"+cliente.id.to_s
        xml.guid guid
      end
    end
  end
end
