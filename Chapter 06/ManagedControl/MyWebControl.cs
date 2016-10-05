using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Collections;

namespace MyWebControl
{
	/// <summary>
	/// This custom control creates a special header type within the Web page.
	/// </summary>
	[DefaultProperty("Text"),
		ToolboxData("<{0}:SpecialHeader " +
                  "Text=\"Sample Header\" HeaderLevel=\"1\"" +
                  "Centered=\"True\" AbsolutePosition=\"False\"" +
                  "runat=server></{0}:SpecialHeader>")]
	public class SpecialHeader : System.Web.UI.WebControls.WebControl
	{
		private string _Text;               // Heading content.
      private int    _HeaderLevel;        // Heading level <H?>
      private bool   _Centered;           // Center the heading?
      private bool   _Absolute;           // Use absolute positioning?
      private bool   _HeaderSubstitute;   // Create a phantom header?
      private int    _Left;               // The left side of the string.
      private int    _Top;                // The top of the string.

      #region Control Properties
		[Bindable(true),
			Category("Appearance"),
			DefaultValue("Sample Header"),
         Description("String displayed by the control.")]
		public string Text
		{
			get { return _Text; }
			set { _Text = value; }
		}

      [Bindable(true),
         Category("Layout"),
         DefaultValue("1"),
         Description("Header level for the string")]
      public int HeaderLevel
      {
         get { return _HeaderLevel; }
         set
         {
            // Validate the input range, then set the property.
            if (value < 1 || value > 6)
               value = 1;
            _HeaderLevel = value;
         }
      }

      [Bindable(true),
      Category("Behavior"),
      DefaultValue("1"),
      Description("Provides a phantom header for positioning purposes. This " +
                  "property is only used in absolute mode.")]
      public bool HeaderSubstitute
      {
         get { return _HeaderSubstitute; }
         set { _HeaderSubstitute = value; }
      }

      [Bindable(true),
         Category("Layout"),
         DefaultValue("True"),
         Description("Center the string when true. In HTML mode, this value " +
                     "will actually center the string. In absolute mode, you " +
                     "must supply a Left property value.")]
      public bool Centered
      {
         get { return _Centered; }
         set { _Centered = value; }
      }

      [Bindable(true),
      Category("Layout"),
      DefaultValue("0"),
      Description("This property determines the left side of the string when " +
         "the control is used in absolute mode. It is ignored in HTML " +
         "mode.")]
      public int Left
      {
         get { return _Left; }
         set 
         {
            // Validate the input value.
            if (value >= 0)
                  _Left = value;}
      }

      [Bindable(true),
         Category("Layout"),
         DefaultValue("0"),
         Description("This property determines the top of the string when " +
            "the control is used in absolute mode. It is ignored in HTML " +
            "mode.")]
      public int Top
      {
         get { return _Top; }
         set 
         {
            // Validate the input value.
            if (value >= 0)
               _Top = value;}
      }

      [Bindable(true),
         Category("Behavior"),
         DefaultValue("False"),
         Description("Use absolute header positioning when true.")]
      public bool AbsolutePosition
      {
         get { return _Absolute; }
         set { _Absolute = value; }
      }
      #endregion

		/// <summary>
		/// Render this control to the output parameter specified.
		/// </summary>
		/// <param name="output"> The HTML writer to write out to </param>
		protected override void Render(HtmlTextWriter output)
		{
         if (_Absolute)
         {
            // Create an enumerator for the WebControl.Style.
            IEnumerator keys = this.Style.Keys.GetEnumerator();

            // Provide the non-CSS output values.
            output.Write("<span id=\"" + this.ID + "\" ");

            // Start the style information.
            output.Write("style=\"");

            // Output the width.
            if (!this.Width.IsEmpty)
               output.Write("width:" + this.Width.ToString() + ";");

            // Take care of the BorderStyle, BorderColor, and BorderWidth values.
            if (this.BorderStyle != BorderStyle.NotSet)
            {
               output.Write("border-style:" + this.BorderStyle.ToString() + ";");
               if (!BorderWidth.IsEmpty)
                  output.Write("border-width:" + this.BorderWidth.ToString() + ";");
               if (!BorderColor.IsEmpty)
                  output.Write("border-color:" + this.BorderColor.ToString() + ";");
            }

            // Output the font configuration, if any.
            if (this.Font.Name.Length > 0)
               output.Write("font-family:" + this.Font.Name + ";");
            if (this.Font.Size.ToString() != null)
               output.Write("font-size:" + this.Font.Size.ToString() + ";");
            if (this.Font.Bold)
               output.Write("font-weight:bold;");
            if (this.Font.Italic)
               output.Write("font-style:italic;");
            if (this.Font.Overline || this.Font.Underline || this.Font.Strikeout)
            {
               output.Write("text-decoration:");
               if (this.Font.Overline)
                  output.Write("overline ");
               if (this.Font.Underline)
                  output.Write("underline ");
               if (this.Font.Strikeout)
                  output.Write("line-through");
               output.Write(";");
            }

            // Output the position information
            output.Write("POSITION: absolute;");
            output.Write("LEFT: " + _Left.ToString() + "px;");
            output.Write("TOP: " + _Top.ToString() + "px");

            // Output the text and closing tag.
            output.Write("\">" + _Text);
            output.Write("</span>\r\n");

            // Add a header substitute when requested.
            if (_HeaderSubstitute)
            {
               output.Write("<H" + this._HeaderLevel.ToString() + "> ");
               output.Write("</H" + this._HeaderLevel.ToString() + ">");
            }
         }
         else
         {
            // Create the standard output, using standard HTML tags.
            if (_Centered)
               output.Write("<CENTER>");
            if (this.Font.Name.Length > 0)
               output.Write("<FONT face=\"" + this.Font.Name + "\">");
            if (this.Font.Bold)
               output.Write("<STRONG>");
            if (this.Font.Italic)
               output.Write("<EM>");
            if (this.Font.Underline)
               output.Write("<U>");
            output.Write("<H" + _HeaderLevel.ToString() + ">");
            output.Write(_Text);
            output.Write("</H" + _HeaderLevel.ToString() + ">");
            if (this.Font.Underline)
               output.Write("</U>");
            if (this.Font.Italic)
               output.Write("</EM>");
            if (this.Font.Bold)
               output.Write("</STRONG>");
            if (this.Font.Name != null)
               output.Write("</FONT>");
            if (_Centered)
               output.Write("</CENTER>");
            output.Write("\r\n");
         }
		}
	}
}
