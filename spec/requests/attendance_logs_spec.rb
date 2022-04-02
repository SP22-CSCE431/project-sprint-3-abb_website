require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/attendance_logs', type: :request do
  # AttendanceLog. As you add validations to AttendanceLog, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      AttendanceLog.create! valid_attributes
      get attendance_logs_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      attendance_log = AttendanceLog.create! valid_attributes
      get attendance_log_url(attendance_log)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_attendance_log_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      attendance_log = AttendanceLog.create! valid_attributes
      get edit_attendance_log_url(attendance_log)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new AttendanceLog' do
        expect do
          post attendance_logs_url, params: { attendance_log: valid_attributes }
        end.to change(AttendanceLog, :count).by(1)
      end

      it 'redirects to the created attendance_log' do
        post attendance_logs_url, params: { attendance_log: valid_attributes }
        expect(response).to redirect_to(attendance_log_url(AttendanceLog.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new AttendanceLog' do
        expect do
          post attendance_logs_url, params: { attendance_log: invalid_attributes }
        end.to change(AttendanceLog, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post attendance_logs_url, params: { attendance_log: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested attendance_log' do
        attendance_log = AttendanceLog.create! valid_attributes
        patch attendance_log_url(attendance_log), params: { attendance_log: new_attributes }
        attendance_log.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the attendance_log' do
        attendance_log = AttendanceLog.create! valid_attributes
        patch attendance_log_url(attendance_log), params: { attendance_log: new_attributes }
        attendance_log.reload
        expect(response).to redirect_to(attendance_log_url(attendance_log))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        attendance_log = AttendanceLog.create! valid_attributes
        patch attendance_log_url(attendance_log), params: { attendance_log: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested attendance_log' do
      attendance_log = AttendanceLog.create! valid_attributes
      expect do
        delete attendance_log_url(attendance_log)
      end.to change(AttendanceLog, :count).by(-1)
    end

    it 'redirects to the attendance_logs list' do
      attendance_log = AttendanceLog.create! valid_attributes
      delete attendance_log_url(attendance_log)
      expect(response).to redirect_to(attendance_logs_url)
    end
  end
end
