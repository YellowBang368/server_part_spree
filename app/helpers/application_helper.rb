module ApplicationHelper
  def tax_tree(root_taxon, current_taxon, max_level = 1)
    return '' if max_level < 1 || root_taxon.leaf?
    content_tag :ul, class: 'taxon-list-group' do
      taxons = root_taxon.children.map do |taxon|
        link_to(taxon.name, seo_url(taxon), class: 'taxon-list-group-item') + taxons_tree(taxon, current_taxon, max_level - 1)
      end
      return taxons
    end
  end
end
