class VsRails::ScansController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :get_scan_id

  def callback
    scan = Scan.where(uuid: @uuid).first

    if params[:status] == "clean"
      scan.update_attribute(:status, "clean")
    elsif params[:status] == "infected"
      scan.update_attribute(:status, "infected")
    else
      scan.update_attribute(:status, "unknown")
    end

    render nothing: true
  end

  def get_scan_id
    @uuid = params[:id]
  end
end
