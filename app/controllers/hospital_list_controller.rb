class HospitalListController < ApplicationController
   def def index
    @hospital_list = HospitalList.all
    render json: @hospital_list
   end
end
