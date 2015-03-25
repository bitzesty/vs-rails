class ScansController < ApplicationController
  def callback
    scan = Scan.find(params[:id])

    if params[:status] == "ok"
      scan.update_attributes(:status, "ok")
      flash[:notice] = "File is OK"
    elsif params[:status] == "infected"
      scan.update_attributes(:status, "infected")
      flash[:error] = "File is infected"
    else
      scan.update_attributes(:status, "unknown")
      flash[:alert] = "File status unknown"
    end
  end
end
