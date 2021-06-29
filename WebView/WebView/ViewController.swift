//
//  ViewController.swift
//  WebView
//
//  Created by nkstar on 2021/06/28.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var urlText: UITextField!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        loadWebViewPage("https://www.naver.com")
        
    }
    
    func loadWebViewPage(_ url: String) { // 화면 로드 함수
        let myUrl = URL(string: url)
        let request = URLRequest(url: myUrl!)
        webView.load(request)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) { // 웹뷰가 로딩 중
        indicator.startAnimating()
        indicator.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) { // 웹뷰 로딩 끝
        indicator.stopAnimating()
        indicator.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        indicator.stopAnimating()
        indicator.isHidden = false
    }
    
    func checkUrl(_ url: String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("https://")
        if !flag {
            strUrl = "https://" + strUrl
        }
        return strUrl
    }

    @IBAction func goUrl(_ sender: Any) {
        let myUrl = checkUrl(urlText.text!)
        print(myUrl)
        urlText.text = ""
        loadWebViewPage(myUrl)
    }
    
    @IBAction func goSite1(_ sender: Any) {
        loadWebViewPage("https://www.google.co.kr")
    }
    
    @IBAction func goSite2(_ sender: Any) {
        loadWebViewPage("https://www.youtube.com")
    }
    
    @IBAction func loadHtml(_ sender: Any) {
        let htmlString = "<h1> HTML String </h1><p> String 변수를 이용한 웹페이지 </p><p><a href=\"http://www.naver.com\">Naver</a>로 이동</p>"
        webView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    @IBAction func loadHtmlFile(_ sender: Any) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let request = URLRequest(url: myUrl)
        webView.load(request)
    }
    
    @IBAction func stop(_ sender: Any) {
        webView.stopLoading()
    }
    
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
    
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func goForward(_ sender: Any) {
        webView.goForward()
    }
}

