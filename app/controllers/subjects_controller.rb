class SubjectsController < ApplicationController
  layout "admin"

  def index
    #assemble a list of all of the subjectss
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    #not necessary, but good practive
    #sets default values
    @subject = Subject.new({:name => "Default"})
  end

  def create
    #Instantiate a new object using form parameters
    @subject = Subject.new(subject_params)
    #Save the object
    if @subject.save
      #If save succeeds, redirect to the index action
      flash[:notice] = "Subject created successfully."
      redirect_to(:action => 'index')
    else
      #If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  #a lot like create
  def update
    #Find an existing object using form parameters
    @subject = Subject.find(params[:id])
    
    #update the object
    if @subject.update_attributes(subject_params)
      #If update succeeds, redirect to the index action
       flash[:notice] = "Subject updated successfully."
      redirect_to(:action => 'show', :id => @subject.id)
    else
      #If update fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    subject = Subject.find(params[:id]).destroy
    flash[:notice] = "Subject '#{subject.name}' destroyed successfully."
    redirect_to(:action=>'index')
  end

  private
    def subject_params
      #same as using "params[:subject]", except that it:
      # - raises the error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:subject).permit(:name, :position, :visible)
    end
  
end
