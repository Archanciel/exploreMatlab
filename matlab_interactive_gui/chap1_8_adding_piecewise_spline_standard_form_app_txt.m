classdef chap1_8_adding_piecewise_spline_standard_form_app_txt < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure            matlab.ui.Figure
        UIAxes              matlab.ui.control.UIAxes
        XSliderLabel        matlab.ui.control.Label
        XSlider             matlab.ui.control.Slider
        YSliderLabel        matlab.ui.control.Label
        YSlider             matlab.ui.control.Slider
        PointDropDownLabel  matlab.ui.control.Label
        PointDropDown       matlab.ui.control.DropDown
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 560];
            app.UIFigure.Name = 'UI Figure';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            title(app.UIAxes, 'Piecewise splines')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.Position = [-7 117 648 444];

            % Create XSliderLabel
            app.XSliderLabel = uilabel(app.UIFigure);
            app.XSliderLabel.HorizontalAlignment = 'right';
            app.XSliderLabel.Position = [168 96 25 22];
            app.XSliderLabel.Text = 'X';

            % Create XSlider
            app.XSlider = uislider(app.UIFigure);
            app.XSlider.Position = [214 105 150 3];

            % Create YSliderLabel
            app.YSliderLabel = uilabel(app.UIFigure);
            app.YSliderLabel.HorizontalAlignment = 'right';
            app.YSliderLabel.Position = [168 37 25 22];
            app.YSliderLabel.Text = 'Y';

            % Create YSlider
            app.YSlider = uislider(app.UIFigure);
            app.YSlider.Position = [214 46 150 3];

            % Create PointDropDownLabel
            app.PointDropDownLabel = uilabel(app.UIFigure);
            app.PointDropDownLabel.HorizontalAlignment = 'right';
            app.PointDropDownLabel.Position = [3 96 32 22];
            app.PointDropDownLabel.Text = 'Point';

            % Create PointDropDown
            app.PointDropDown = uidropdown(app.UIFigure);
            app.PointDropDown.Position = [50 96 100 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = chap1_8_adding_piecewise_spline_standard_form_app_txt

            % Create UIFigure and components
            createComponents(app)
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end