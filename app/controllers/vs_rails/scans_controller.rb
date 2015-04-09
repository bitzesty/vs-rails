class VsRails::ScansController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :get_scan_id

  def callback
    scan = Scan.where(uuid: @uuid).first

    if params[:status] == "clean"
      scan.update_attribute(:status, "clean")
      flash[:notice] = "File is OK"
    elsif params[:status] == "infected"
      scan.update_attribute(:status, "infected")
      flash[:error] = "File is infected"
    else
      scan.update_attribute(:status, "unknown")
      flash[:alert] = "File status unknown"
    end

    render nothing: true
  end

  def get_scan_id
    @uuid = params[:id]
  end
end
