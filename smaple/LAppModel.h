
#pragma once

//Objective C
#import <AVFoundation/AVFoundation.h>

#include "L2DBaseModel.h"

//Live2D Lib
#include "Live2DModelIPhone.h"

//utils
#include "ModelSetting.h"

#include <string>
#include <vector>

class LAppModel : public live2d::framework::L2DBaseModel
{
private:
    ModelSetting*			modelSetting;
	std::string			modelHomeDir;
   

	AVAudioPlayer*		voice;	
			
public:
    LAppModel();
    ~LAppModel(void);
    
	
    void load(const char path[]);
	
	
	void preloadMotionGroup(const char name[]);
	
	
    void update();
    void draw();
	
	
    int startMotion(const char name[],int no,int priority);
	int startRandomMotion(const char name[],int priority);
	
	
	void setExpression(const char name[]);
	void setRandomExpression();
	
    
	bool hitTest(const char pid[],float testX,float testY);
	 
	
	void startVoice( const char fileName[] );
	
	
	void feedIn();
	
private:
	
	void drawHitRect();
};






