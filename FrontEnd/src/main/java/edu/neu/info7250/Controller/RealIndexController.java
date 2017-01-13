package edu.neu.info7250.Controller;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

/**
 * Created by kym1992 on 11/29/16.
 */
@Controller
@RequestMapping("/realIndex.do")
public class RealIndexController {
    @RequestMapping(method = RequestMethod.GET)
    protected String handleRequest(HttpServletRequest httpServletRequest, ModelMap model) throws Exception{
        return "realIndex";
    }
}
