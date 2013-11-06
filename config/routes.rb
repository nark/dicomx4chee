DicomX4chee::Application.routes.draw do
  mount Dcm4chee::Engine => '/dcm4chee', :as => 'dcm4chee'
end
