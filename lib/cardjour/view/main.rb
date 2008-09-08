require 'controller'

Shoes.app :width => 600, :height => 700, :title => "Cardjour" do
  background white
  background silver, :height => 100

  stack(:margin => 10, :displace_left => 50) do
    flow(:margin => 2) do
      caption "VCard "
      @txt_card = edit_line :width => 400
    end

    flow(:margin => 2) do
      @chk_publish = check
      @lbl_publish = inscription "Publish"
      flow(:displace_top => -40, :displace_left => 150) do
        inscription "Find Vcard file to share with others"
        @btn_find = button "Find ..."
      end
    end

  end

  stack(:margin => 10, :displace_left => 50, :displace_top => -20, :wdith => 200) do
    caption "Shared Vcards", :stroke => gray
    para "No one shared any file yet!"
  end

  @btn_find.click do
    @txt_card.text = ask_open_file
  end
  
  @chk_publish.click do
    if @txt_card.text == ""
      alert "Please select VCard file to publish first"
      @chk_publish.checked = false
    else

    end
  end
end