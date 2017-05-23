require 'rails_helper'
require 'announcements_controller.rb'

describe AnnouncementsController do

  include AuthHelper
  before(:each) do
    http_login
  end
  it 'renders head created' do
    announcement = create(:announcement)
    post :create, {
  "data": {
    "type": "publication",
    "attributes": {
      "job_offer": {
        "title": "Responsable commercial H/F",
        "description": "Spécialisé dans la <strong>prestation intellectuelle d’expertise IT</strong>, notre client recherche aujourd’hui un Responsable Commercial (H/F).\n\nAfin d’accompagner leur croissance, le candidat devra déployer et installer durablement leur présence dans le Finistère.\n\nSous la responsabilité du Directeur Commercial, le candidat aura pour missions de :\n\n• Répondre aux appels d’offres.\n• Identifier, prospecter et promouvoir l’offre auprès d’autres interlocuteurs afin d’en accroître sa présence et recueillir de nouveaux besoins.\n• Superviser la réalisation contractuelle avec les clients et partenaires, assurer le suivi des missions et veiller à la satisfaction client.\n• Concrétiser de nouveaux référencements régionaux par la signature d’affaires et participer au gain de référencements nationaux.\n\nDe formation supérieure (Bac+5), issu d’Ecole de Commerce ou d’Ingénieurs, le candidat dispose d’une expérience significative en SSII la vente de services complexes sur mesure. Il bénéficie également d’une expérience dans la gestion commerciale de grands comptes et est capable de construire des offres adaptées. Il a une excellente connaissance du bassin économique de la métropole lilloise.\n\nDoté de véritables qualités d’écoute, force de proposition, réactif, il sait convaincre ses clients autant que ses partenaires. Vif et créatif, il a su démontrer une forte habilité à nouer des relations commerciales pérennes avec ses clients.",
        "customer": {
          "name": "L'Oréal"
        }
      }
    }
  }
}
    expect(response).to have_http_status(:created)
  end
end
