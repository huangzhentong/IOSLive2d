
#pragma once
//#include <vector>
#include "type/LDVector.h"
#include <math.h>
#include "L2DViewMatrix.h"
#include <CoreGraphics/CoreGraphics.h>
@class LAppView;
class LAppModel;

class LAppLive2DManager{
private :
    
	
	live2d::LDVector<LAppModel*> models;
	
    
    LAppView* view ;
	
	
	int modelCount;
	bool reloadFlg;
public:
    LAppLive2DManager() ;    
    ~LAppLive2DManager() ;
	
    
	void releaseModel();
	void releaseView();
	
	
	void init();
    
	
    LAppView* createView(CGRect &rect);
	LAppView* getView(){return view;}
    
	
	void update();  
	
	
    LAppModel* getModel(int no){ return models[no]; }
    int getModelNum(){return models.size();}
    
	
	bool changeModel();
	
	
    bool tapEvent(float x,float y) ;
    void flickEvent(float x,float y);
    void maxScaleEvent() ;    
    void minScaleEvent() ;
    void shakeEvent() ;
    void onResume();
    void onPause();
    void setDrag(float x, float y);
    void setAccel(float x, float y, float z);
    
	
	live2d::framework::L2DViewMatrix* getViewMatrix();
};

