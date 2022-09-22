//
//  ImageUpload.swift
//  YapChatProject
//
//  Created by Ahmad on 13/09/2022.
//

import Foundation
import Alamofire
import UIKit

public class DocumentUpload {
    
    static func ImageUpload(_ image: UIImage, url: String) {
        guard image.jpegData(compressionQuality: 0.9) != nil else {
                return
            }
            let imagedata = image.jpegData(compressionQuality: 0.3)
        AF.upload(multipartFormData: { multipartFormData in
                      multipartFormData.append(imagedata!, withName: "files", fileName: "image.jpg", mimeType: "image/jpg")
                  
          }, to: "\(url)")
              .response { response in
                  if response.response?.statusCode == 200 {
                      print("Image Uploaded")
                  }
          }
        }
    
    static func audioUpload(path: URL, url: String, fileName: String) {
    
        AF.upload(multipartFormData: { multipartFormData in
                      multipartFormData.append(path, withName: "files", fileName: fileName, mimeType: "\(fileName)/wav")
                  
          }, to: "\(url)")
              .response { response in
                  if response.response?.statusCode == 200 {
                      print("Audio Uploaded")
                  }
          }
      
        }
}

