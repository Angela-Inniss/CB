[1mdiff --git a/Gemfile b/Gemfile[m
[1mindex b20c781..da16192 100644[m
[1m--- a/Gemfile[m
[1m+++ b/Gemfile[m
[36m@@ -2,6 +2,7 @@[m [msource 'https://rubygems.org'[m
 git_source(:github) { |repo| "https://github.com/#{repo}.git" }[m
 [m
 ruby '2.5.3'[m
[32m+[m[32mgem "mail_form", ">= 1.3.0"[m
 gem 'devise'[m
 #gem "bootstrap_form", ">= 4.2.0"[m
 gem 'dotenv-rails', groups: [:development, :test][m
[36m@@ -9,7 +10,7 @@[m [mgem 'carrierwave', '~> 1.2'[m
 gem 'cloudinary', '~> 1.9.1'[m
 gem 'popper_js', '~> 1.14.5'[m
 gem 'bootstrap'[m
[31m-gem 'jquery-rails'[m
[32m+[m[32mgem 'jquery-rails', '~> 4.1', '>= 4.1.1'[m
 gem 'autoprefixer-rails'[m
 gem 'font-awesome-sass', '~> 5.6.1'[m
 gem 'simple_form'[m
[1mdiff --git a/Gemfile.lock b/Gemfile.lock[m
[1mindex a61b7a6..a25924c 100644[m
[1m--- a/Gemfile.lock[m
[1m+++ b/Gemfile.lock[m
[36m@@ -129,6 +129,9 @@[m [mGEM[m
       nokogiri (>= 1.5.9)[m
     mail (2.7.1)[m
       mini_mime (>= 0.1.1)[m
[32m+[m[32m    mail_form (1.7.1)[m
[32m+[m[32m      actionmailer (>= 3.2, < 6)[m
[32m+[m[32m      activemodel (>= 3.2, < 6)[m
     marcel (0.3.3)[m
       mimemagic (~> 0.3.2)[m
     method_source (0.9.2)[m
[36m@@ -278,8 +281,9 @@[m [mDEPENDENCIES[m
   dotenv-rails[m
   font-awesome-sass (~> 5.6.1)[m
   jbuilder (~> 2.5)[m
[31m-  jquery-rails[m
[32m+[m[32m  jquery-rails (~> 4.1, >= 4.1.1)[m
   listen (>= 3.0.5, < 3.2)[m
[32m+[m[32m  mail_form (>= 1.3.0)[m
   pg (>= 0.18, < 2.0)[m
   popper_js (~> 1.14.5)[m
   puma (~> 3.11)[m
[1mdiff --git a/app/assets/stylesheets/contact.scss b/app/assets/stylesheets/contact.scss[m
[1mindex c2199c9..80676f0 100644[m
[1m--- a/app/assets/stylesheets/contact.scss[m
[1m+++ b/app/assets/stylesheets/contact.scss[m
[36m@@ -32,6 +32,9 @@[m
   font-weight: 700;[m
   padding: 10px 30px 10px 30px;[m
   text-align: center;[m
[32m+[m[32m  p {[m
[32m+[m[32m    margin:0px !important;[m
[32m+[m[32m  }[m
  }[m
 [m
    #sidebar-mobile {[m
[36m@@ -59,7 +62,7 @@[m
   i {[m
      color:white !important;[m
   }[m
[31m-}[m
[32m+[m[32m }[m
 [m
 [m
 [m
[36m@@ -126,6 +129,10 @@[m
     color: white;[m
     letter-spacing: 1px;[m
     font-weight: 600;[m
[32m+[m[32m    p {[m
[32m+[m[32m      margin:0px !important;[m
[32m+[m
[32m+[m[32m    }[m
 }[m
 [m
 .mobile-contact-page {[m
[1mdiff --git a/app/assets/stylesheets/messages.scss b/app/assets/stylesheets/messages.scss[m
[1mnew file mode 100644[m
[1mindex 0000000..c602667[m
[1m--- /dev/null[m
[1m+++ b/app/assets/stylesheets/messages.scss[m
[36m@@ -0,0 +1,46 @@[m
[32m+[m[32m// Place all the styles related to the messages controller here.[m
[32m+[m[32m// They will automatically be included in application.css.[m
[32m+[m[32m// You can use Sass (SCSS) here: http://sass-lang.com/[m
[32m+[m
[32m+[m[32m/* @import "bootstrap-sprockets";[m
[32m+[m[32m@import "bootstrap";[m
[32m+[m[32m */[m
[32m+[m[32mbody {[m
[32m+[m[32m  background-color: black;[m
[32m+[m[32m  color: white;[m
[32m+[m[32m}[m
[32m+[m[32m.contact-form-text-area {[m
[32m+[m[32m  color: black;[m
[32m+[m[32m}[m
[32m+[m[32m.hidden { display: none; }[m
[32m+[m[32m.alert-error {[m
[32m+[m[32mbackground-color: #f2dede;[m
[32m+[m[32mborder-color: #eed3d7;[m
[32m+[m[32mcolor: #b94a48;[m
[32m+[m[32mtext-align: left;[m
[32m+[m[32mfont-size: .8em;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.alert-alert {[m
[32m+[m[32mbackground-color: #f2dede;[m
[32m+[m[32mborder-color: #eed3d7;[m
[32m+[m[32mcolor: #b94a48;[m
[32m+[m[32mtext-align: left;[m
[32m+[m[32mfont-size: .8em;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.alert-success {[m
[32m+[m[32mbackground-color: #dff0d8;[m
[32m+[m[32mborder-color: #d6e9c6;[m
[32m+[m[32mcolor: #468847;[m
[32m+[m[32mtext-align: center;[m
[32m+[m[32mfont-size: .8em;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.alert-notice {[m
[32m+[m[32mbackground-color: #dff0d8;[m
[32m+[m[32mborder-color: #d6e9c6;[m
[32m+[m[32mcolor: #468847;[m
[32m+[m[32mtext-align: left;[m
[32m+[m[32mfont-size: .8em;[m
[32m+[m[32m}[m
[1mdiff --git a/app/assets/stylesheets/pages.scss b/app/assets/stylesheets/pages.scss[m
[1mindex 69602bf..3d652ca 100644[m
[1m--- a/app/assets/stylesheets/pages.scss[m
[1m+++ b/app/assets/stylesheets/pages.scss[m
[36m@@ -557,11 +557,20 @@[m [mcolor: white;[m
     margin: 8px;[m
 }[m
 [m
[31m-.nav-open {[m
[31m-  height: 400px;[m
[32m+[m
[32m+[m[32m #new-drop-down-js{[m
[32m+[m[32m  display : none;  // set the default value as none[m
 }[m
 [m
[31m-.nav-close {[m
[31m-  height:0px;[m
[32m+[m[32m.nav-open { //when open let the nav look lik ethis[m
[32m+[m[32m  height: 400px;[m
[32m+[m[32m  display :block !important;[m
   transition: 0.7s;[m
 }[m
[32m+[m
[32m+[m[32m.nav-close { // when nav closes go to 0px and display:none[m
[32m+[m[32m  height:0px;[m
[32m+[m[32m  transition: 0.10s;[m
[32m+[m[32m  display:none;[m
[32m+[m[32m }[m
[41m+[m
[1mdiff --git a/app/controllers/messages_controller.rb b/app/controllers/messages_controller.rb[m
[1mnew file mode 100644[m
[1mindex 0000000..6ac0fbb[m
[1m--- /dev/null[m
[1m+++ b/app/controllers/messages_controller.rb[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32mclass MessagesController < ApplicationController[m
[32m+[m[32m  def index[m
[32m+[m[32m     @contact = Message.new(params[:message])[m
[32m+[m[32m  end[m
[32m+[m
[32m+[m[32m  def create[m
[32m+[m[32m    @contact = Message.new(params[:mesage])[m
[32m+[m[32m    @contact.request = request[m
[32m+[m
[32m+[m[32m    respond_to do |format|[m
[32m+[m[32m      if @contact.deliver![m
[32m+[m[32m        # re-initialize Message object for cleared form[m
[32m+[m[32m        @contact = Message.new[m
[32m+[m[32m        format.html { render 'index'}[m
[32m+[m[32m        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }[m
[32m+[m[32m      else[m
[32m+[m[32m        format.html { render 'index' }[m
[32m+[m[32m        format.js   { flash.now[:error] = @message = "Message did not send." }[m
[32m+[m[32m      end[m
[32m+[m[32m    end[m
[32m+[m[32m  end[m
[32m+[m[32mend[m
[32m+[m
[1mdiff --git a/app/models/message.rb b/app/models/message.rb[m
[1mnew file mode 100644[m
[1mindex 0000000..2da2b0d[m
[1m--- /dev/null[m
[1m+++ b/app/models/message.rb[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32m# app/models/home.rb[m
[32m+[m[32mclass Message < MailForm::Base[m
[32m+[m[32m  attribute :name,      :validate => true[m
[32m+[m[32m  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i[m
[32m+[m[32m  attribute :message[m
[32m+[m[32m  attribute :nickname,  :captcha  => true[m
[32m+[m
[32m+[m[32m  # Declare the e-mail headers. It accepts anything the mail method[m
[32m+[m[32m  # in ActionMailer accepts.[m
[32m+[m[32m  def headers[m
[32m+[m[32m    {[m
[32m+[m[32m      :subject => "Contact Form Inquiry",[m
[32m+[m[32m      :to => "angelainniss26@gmail.com",[m
[32m+[m[32m      :from => %("#{name}" <#{email}>)[m
[32m+[m[32m    }[m
[32m+[m[32m  end[m
[32m+[m[32mend[m
[1mdiff --git a/app/views/messages/_contact_form.html.erb b/app/views/messages/_contact_form.html.erb[m
[1mnew file mode 100644[m
[1mindex 0000000..83e9709[m
[1m--- /dev/null[m
[1m+++ b/app/views/messages/_contact_form.html.erb[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32m<%= form_for @contact, url: messages_path, remote: true do |f| %>[m
[32m+[m[32m    <div class="form-group">[m
[32m+[m[32m        <%= f.label :name %></br>[m
[32m+[m[32m        <%= f.text_field  :name, required: true, class: "form-group form-control" %></br>[m
[32m+[m
[32m+[m[32m        <%= f.label :email %></br>[m
[32m+[m[32m        <%= f.text_field :email, required: true, class: "contact-form-text-area form-control" %></br>[m
[32m+[m
[32m+[m[32m      <%= f.label :message %></br>[m
[32m+[m[32m      <%= f.text_area :message, rows: 8, cols: 40, required: true, class: "contact-form-text-area form-control",[m
[32m+[m[32m                        placeholder: "Send me a message"%></br>[m
[32m+[m
[32m+[m[32m      <div class= "hidden">[m
[32m+[m[32m        <%= f.label :nickname %>[m
[32m+[m[32m        <%= f.text_field :nickname, :hint => 'Leave this field blank!' %>[m
[32m+[m[32m      </div>[m
[32m+[m
[32m+[m[32m      <%= f.submit 'Send Message', class: 'btn btn-primary btn-treehouse'%>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  <% end %>[m
[32m+[m[32m  <div class="col-md-6" id="flash-message">[m
[32m+[m[32m    <%= render 'flash' %>[m
[32m+[m[32m  </div>[m
[32m+[m
[32m+[m
[32m+[m[32m<!--  <div class="form-group">[m
[32m+[m[32m     <label for="formGroupExampleInput">Name:</label>[m
[32m+[m[32m     <input type="text"  name="name" class="form-control" id="formGroupExampleInput" placeholder="John Doe">[m
[32m+[m[32m   </div> -->[m
[1mdiff --git a/app/views/messages/_create.js.erb b/app/views/messages/_create.js.erb[m
[1mnew file mode 100644[m
[1mindex 0000000..f64aa81[m
[1m--- /dev/null[m
[1m+++ b/app/views/messages/_create.js.erb[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m// Test for ajax success[m
[32m+[m[32mconsole.log("This is the create.js.erb file");[m
[32m+[m[32m// Render flash message[m
[32m+[m[32m$('#contact').html("<%= j render 'contact_form' %>");[m
[32m+[m[32m$('#flash-message').html("<%= j render 'flash' %>").delay(3000).fadeOut(4000);[m
[1mdiff --git a/app/views/messages/_flash.html.erb b/app/views/messages/_flash.html.erb[m
[1mnew file mode 100644[m
[1mindex 0000000..1a95ce6[m
[1m--- /dev/null[m
[1m+++ b/app/views/messages/_flash.html.erb[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m<% flash.each do |message_type, message| %>[m
[32m+[m[32m    <%= content_tag(:div, message, class: "alert alert-#{message_type}") %>[m
[32m+[m[32m<% end %>[m
[1mdiff --git a/app/views/messages/index.html.erb b/app/views/messages/index.html.erb[m
[1mnew file mode 100644[m
[1mindex 0000000..ba2e4f6[m
[1m--- /dev/null[m
[1m+++ b/app/views/messages/index.html.erb[m
[36m@@ -0,0 +1,51 @@[m
[32m+[m[32m<!-- app/views/home/index.html.erb -->[m
[32m+[m[32m<div class="desktop-tablet-contact">[m
[32m+[m[32m  <div class="background-about-tablet">[m
[32m+[m[32m  <div id="sidebar" data-aos="fade-right">[m
[32m+[m
[32m+[m[32m      <ul>[m
[32m+[m[32m        <li><a href="mailto:cbcarpetcleaningservices.uk<"><i class="fas fa-at icon"> </i> </a></li>[m
[32m+[m[32m        <li><a href="www.google.com"><i class="phone"><i class="fas fa-phone icon"></i></a></li>[m
[32m+[m[32m        <li><a href="www.google.com"><i class="fab fa-facebook-f icon"></i></a></li>[m
[32m+[m[32m      <ul>[m
[32m+[m
[32m+[m[32m  </div>[m
[32m+[m[32m    <div>[m
[32m+[m[32m      <h3>Contact.</h3>[m
[32m+[m[32m      <div class="dash"> - </div>[m
[32m+[m[32m      <h6>Drop us an email</h6>[m
[32m+[m[32m      <p class="about-text-tablet">If you need urgent help please call us using the number supplied on this page. Otherwise please fill in the form below where a member of the team will respond within 24 hours.</p>[m
[32m+[m[32m      <div class="dash"> - </div>[m
[32m+[m[32m    </div>[m
[32m+[m
[32m+[m[32m    <div id="contact" class="form-desktop" data-aos="zoom-in">[m
[32m+[m[32m      <%= render 'contact_form' %>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  <!--   <form id="contact-email" class="form-desktop" data-aos="zoom-in">[m
[32m+[m[32m    <div class="form-group">[m
[32m+[m[32m      <label for="formGroupExampleInput">Name:</label>[m
[32m+[m[32m      <input type="text"  name="name" class="form-control" id="formGroupExampleInput" placeholder="John Doe">[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <div class="form-group">[m
[32m+[m[32m      <label for="exampleInputEmail1">Email address:</label>[m
[32m+[m[32m      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="John Doe@gmail.com">[m
[32m+[m[32m      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <div class="form-group">[m
[32m+[m[32m      <label for="formGroupExampleInput2">Message:</label>[m
[32m+[m[32m      <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Enter your message here">[m
[32m+[m[32m    </div>[m
[32m+[m[32m     <button type="submit" class="btn btn-primary">Submit</button>[m
[32m+[m[32m    <div class="email"><a href="mailto:name@email.com" class="btn-treehouse">Get a quote</a></div>[m
[32m+[m[32m  </form> -->[m
[32m+[m
[32m+[m[32m   <div class="divider-contact">[m
[32m+[m[32m      <p> Got an emergency? Call 07931358885 now.</p>[m
[32m+[m[32m   </div>[m
[32m+[m[32m    <div class="back-link-contact">[m
[32m+[m[32m      <%= link_to 'Back to completed jobs', services_path %>[m
[32m+[m[32m    <div>[m
[32m+[m[32m  </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </div>[m
[32m+[m[32m</div>[m
[1mdiff --git a/config/routes.rb b/config/routes.rb[m
[1mindex 121689e..61e0389 100644[m
[1m--- a/config/routes.rb[m
[1m+++ b/config/routes.rb[m
[36m@@ -4,5 +4,7 @@[m [mRails.application.routes.draw do[m
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html[m
   resources :services[m
   resources :reviews, only: [:create,:destroy,][m
[32m+[m[32m  resources :messages, only: [:index, :new, :create][m
   get "/:page" => "static_pages#show"[m
  end[m
[32m+[m[32m#root      'home#index'[m
[1mdiff --git a/test/controllers/messages_controller_test.rb b/test/controllers/messages_controller_test.rb[m
[1mnew file mode 100644[m
[1mindex 0000000..da68e6a[m
[1m--- /dev/null[m
[1m+++ b/test/controllers/messages_controller_test.rb[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32mrequire 'test_helper'[m
[32m+[m
[32m+[m[32mclass MessagesControllerTest < ActionDispatch::IntegrationTest[m
[32m+[m[32m  test "should get index" do[m
[32m+[m[32m    get messages_index_url[m
[32m+[m[32m    assert_response :success[m
[32m+[m[32m  end[m
[32m+[m
[32m+[m[32mend[m
