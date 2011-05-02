class ImportsController < ApplicationController
  before_filter :authenticate_admin! #protect controller from anonymous users
	
	require 'Pic.rb'
	
  def new
    @import = Import.new
	end

	def create
    @import = Import.new(params[:import])

    respond_to do |format|
      if @import.save!
        flash[:notice] = 'CSV data was successfully imported.'
        format.html { redirect_to(@import) }
      else
        flash[:error] = 'CSV data import failed.'
        format.html { render :action => "new" }
      end
    end
	end

	def show
    @import = Import.find(params[:id])
	end

	def proc_csv
    @import = Import.find(params[:id])
    lines = parse_csv_file(@import.csv.path)
    #lines.shift #comment this line out if your CSV file doesn't contain a header row
    if lines.size > 0
      @import.processed = lines.size
      lines.each do |line|
        case @import.datatype
        when "releases"
          new_pic(line)
        end
      end
      @import.save
      flash[:notice] = "CSV data processing was successful."
      redirect_to :action => "show", :id => @import.id
    else
      flash[:error] = "CSV data processing failed."
      render :action => "show", :id => @import.id
    end
	end

private

  def parse_csv_file(path_to_csv)
    lines = []

    #if not installed run, sudo gem install fastercsv
    #http://fastercsv.rubyforge.org/
    require 'fastercsv'

    FasterCSV.foreach(path_to_csv) do |row|
      lines << row
    end
    lines
  end

	def new_pic(line)
    params = Hash.new
    params[:pic] = Hash.new
    params[:pic]["random_id"] = line[0]
	params[:pic]["school_name"] = line[1]
    params[:pic]["school_year"] = line[2]
    params[:pic]["grade"] = line[3]
    params[:pic]["student_last_name"] = line[4]
    params[:pic]["student_first_name"] = line[5]
    params[:pic]["email"] = line[6]
    params[:pic]["homeroom"] = line[7]
    params[:pic]["active_status"] = line[8]

    pic = Pic.create!(params[:pic])
	end

end