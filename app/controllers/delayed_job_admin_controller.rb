class DelayedJobAdminController < ApplicationController

  layout 'delayed_job_admin'

  before_filter :delayed_job_admin_authentication

  def index
    @delayed_jobs = Delayed::Job.paginate :page => params[:page], :per_page => params[:per_page], :order => 'id DESC'
  end

end
