class Admin::ResumesController < ApplicationController
  before_action :authenticate_user!
    before_action :require_is_admin

    layout 'admin'

    def index
      @job = Job.find(params[:job_id])
      @resumes = @job.resumes.order('created_at DESC')
    end
<<<<<<< HEAD
=======

>>>>>>> d0fa13e94ef3414aa49c106c587e2903965ceee8
end
