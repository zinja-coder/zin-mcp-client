.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    }
.end annotation


# instance fields
.field amountX:F

.field amountY:F

.field areaHeight:F

.field areaWidth:F

.field cancelTouchFocus:Z

.field private clamp:Z

.field private disableX:Z

.field private disableY:Z

.field draggingPointer:I

.field fadeAlpha:F

.field fadeAlphaSeconds:F

.field fadeDelay:F

.field fadeDelaySeconds:F

.field private fadeScrollBars:Z

.field flickScroll:Z

.field private flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

.field flingTime:F

.field flingTimer:F

.field private forceScrollX:Z

.field private forceScrollY:Z

.field final hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field hScrollOnBottom:Z

.field final lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field maxX:F

.field maxY:F

.field private overscrollDistance:F

.field private overscrollSpeedMax:F

.field private overscrollSpeedMin:F

.field private overscrollX:Z

.field private overscrollY:Z

.field private final scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

.field scrollX:Z

.field scrollY:Z

.field private scrollbarsOnTop:Z

.field private smoothScrolling:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

.field touchScrollH:Z

.field touchScrollV:Z

.field final vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field vScrollOnRight:Z

.field private variableSizeKnobs:Z

.field velocityX:F

.field velocityY:F

.field visualAmountX:F

.field visualAmountY:F

.field private widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 88
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 4
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .prologue
    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 102
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 61
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    .line 62
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    .line 67
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 69
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->smoothScrolling:Z

    .line 70
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    .line 71
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    .line 73
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    .line 76
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    .line 77
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    .line 78
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    .line 81
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    .line 83
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    .line 103
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 105
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 106
    invoke-virtual {p0, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setSize(FF)V

    .line 108
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 183
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 215
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 93
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 99
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 12
    .param p1, "delta"    # F

    .prologue
    const/high16 v11, 0x43480000    # 200.0f

    const/high16 v10, 0x40e00000    # 7.0f

    const/4 v9, 0x0

    .line 269
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->act(F)V

    .line 271
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v2

    .line 272
    .local v2, "panning":Z
    const/4 v1, 0x0

    .line 274
    .local v1, "animating":Z
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-nez v4, :cond_1

    .line 275
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    sub-float/2addr v4, p1

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    .line 276
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    sub-float/2addr v4, p1

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 277
    :cond_0
    const/4 v1, 0x1

    .line 280
    :cond_1
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_7

    .line 281
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 283
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    div-float v0, v4, v5

    .line 284
    .local v0, "alpha":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    mul-float/2addr v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 285
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    mul-float/2addr v5, v0

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 286
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp()V

    .line 289
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 290
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 291
    :cond_3
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 292
    :cond_4
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 294
    :cond_5
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    sub-float/2addr v4, p1

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 295
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_6

    .line 296
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 297
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 300
    :cond_6
    const/4 v1, 0x1

    .line 303
    .end local v0    # "alpha":F
    :cond_7
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->smoothScrolling:Z

    if-eqz v4, :cond_11

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_11

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-nez v4, :cond_11

    if-nez v2, :cond_11

    .line 304
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 305
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_f

    .line 306
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    mul-float v6, v11, p1

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    mul-float/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollX(F)V

    .line 309
    :goto_0
    const/4 v1, 0x1

    .line 311
    :cond_8
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 312
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_10

    .line 313
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    mul-float v6, v11, p1

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    mul-float/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollY(F)V

    .line 316
    :goto_1
    const/4 v1, 0x1

    .line 323
    :cond_9
    :goto_2
    if-nez v2, :cond_d

    .line 324
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v4, :cond_b

    .line 325
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_13

    .line 326
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 327
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    neg-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 329
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_a

    invoke-virtual {p0, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 330
    :cond_a
    const/4 v1, 0x1

    .line 340
    :cond_b
    :goto_3
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v4, :cond_d

    .line 341
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_15

    .line 342
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 343
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    neg-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 345
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_c

    invoke-virtual {p0, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    .line 346
    :cond_c
    const/4 v1, 0x1

    .line 358
    :cond_d
    :goto_4
    if-eqz v1, :cond_e

    .line 359
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    .line 360
    .local v3, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 362
    .end local v3    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_e
    return-void

    .line 308
    :cond_f
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    mul-float v6, v11, p1

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    mul-float/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollX(F)V

    goto/16 :goto_0

    .line 315
    :cond_10
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    mul-float v6, v11, p1

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    mul-float/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollY(F)V

    goto/16 :goto_1

    .line 319
    :cond_11
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_12

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollX(F)V

    .line 320
    :cond_12
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollY(F)V

    goto/16 :goto_2

    .line 331
    :cond_13
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 332
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 333
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 336
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_14

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 337
    :cond_14
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 347
    :cond_15
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    .line 348
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 349
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 352
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_16

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    .line 353
    :cond_16
    const/4 v1, 0x1

    goto/16 :goto_4
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 681
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actorAfter"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 699
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 687
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actorBefore"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 693
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use ScrollPane#setWidget."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    .line 243
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 244
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->cancel()V

    .line 246
    return-void
.end method

.method cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .prologue
    .line 235
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 237
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method clamp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 249
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 252
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    add-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    goto :goto_0

    .line 250
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {v0, v4, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_1

    .line 252
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {v0, v4, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_2
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 12
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    const/4 v2, 0x0

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->validate()V

    .line 531
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 533
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollPercentX()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 535
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollPercentY()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 540
    .local v10, "y":F
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-nez v0, :cond_12

    .line 541
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float/2addr v10, v0

    .line 545
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 546
    .local v9, "x":F
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float/2addr v9, v0

    .line 548
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    if-eqz v0, :cond_9

    .line 549
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    if-eqz v0, :cond_6

    .line 550
    const/4 v7, 0x0

    .line 551
    .local v7, "scrollbarHeight":F
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    .line 552
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 553
    :cond_5
    add-float/2addr v10, v7

    .line 555
    .end local v7    # "scrollbarHeight":F
    :cond_6
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    if-nez v0, :cond_9

    .line 556
    const/4 v8, 0x0

    .line 557
    .local v8, "scrollbarWidth":F
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v8

    .line 558
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 559
    :cond_8
    add-float/2addr v9, v8

    .line 563
    .end local v8    # "scrollbarWidth":F
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    if-eqz v0, :cond_a

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    neg-float v1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v1

    neg-float v1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 568
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 569
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 574
    :cond_a
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 575
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-interface {p1, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_b

    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 578
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 583
    :cond_b
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 587
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 588
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 589
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    .line 593
    :cond_c
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    div-float/2addr v5, v11

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 594
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_d

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->corner:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_d

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->corner:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 600
    :cond_d
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_f

    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_e

    .line 602
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 603
    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_f

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 606
    :cond_f
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_11

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_10

    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 609
    :cond_10
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_11

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 613
    :cond_11
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto/16 :goto_0

    .line 543
    .end local v6    # "color":Lcom/badlogic/gdx/graphics/Color;
    .end local v9    # "x":F
    :cond_12
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float/2addr v10, v0

    goto/16 :goto_1
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .line 1032
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 1033
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1034
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scissorBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1036
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    .line 1038
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1039
    return-void
.end method

.method public fling(FFF)V
    .locals 0
    .param p1, "flingTime"    # F
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 621
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 622
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 623
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 624
    return-void
.end method

.method public getMaxX()F
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method protected getMouseWheelX()F
    .locals 3

    .prologue
    .line 737
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getMouseWheelY()F
    .locals 3

    .prologue
    .line 742
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 4

    .prologue
    .line 642
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v2, :cond_4

    .line 643
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    .line 644
    .local v0, "height":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 645
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollX:Z

    if-eqz v2, :cond_3

    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "scrollbarHeight":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 649
    :cond_2
    add-float/2addr v0, v1

    .line 653
    .end local v0    # "height":F
    .end local v1    # "scrollbarHeight":F
    :cond_3
    :goto_0
    return v0

    :cond_4
    const/high16 v0, 0x43160000    # 150.0f

    goto :goto_0
.end method

.method public getPrefWidth()F
    .locals 4

    .prologue
    .line 627
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v2, :cond_4

    .line 628
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v1

    .line 629
    .local v1, "width":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 630
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollY:Z

    if-eqz v2, :cond_3

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "scrollbarWidth":F
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 634
    :cond_2
    add-float/2addr v1, v0

    .line 638
    .end local v0    # "scrollbarWidth":F
    .end local v1    # "width":F
    :cond_3
    :goto_0
    return v1

    :cond_4
    const/high16 v1, 0x43160000    # 150.0f

    goto :goto_0
.end method

.method public getScrollBarHeight()F
    .locals 2

    .prologue
    .line 854
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 858
    :cond_0
    :goto_0
    return v0

    .line 855
    :cond_1
    const/4 v0, 0x0

    .line 856
    .local v0, "height":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    .line 857
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getScrollBarWidth()F
    .locals 2

    .prologue
    .line 862
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 866
    :cond_0
    :goto_0
    return v0

    .line 863
    :cond_1
    const/4 v0, 0x0

    .line 864
    .local v0, "width":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getScrollHeight()F
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    return v0
.end method

.method public getScrollPercentX()F
    .locals 3

    .prologue
    .line 786
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollPercentY()F
    .locals 3

    .prologue
    .line 794
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollWidth()F
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    return v0
.end method

.method public getScrollX()F
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    return v0
.end method

.method public getScrollY()F
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    return-object v0
.end method

.method public getVariableSizeKnobs()Z
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    return v0
.end method

.method public getVelocityX()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 929
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    .line 932
    :goto_0
    return v1

    .line 930
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    div-float v0, v1, v2

    .line 931
    .local v0, "alpha":F
    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    .line 932
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    goto :goto_0
.end method

.method public getVelocityY()F
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    return v0
.end method

.method public getVisualScrollPercentX()F
    .locals 3

    .prologue
    .line 778
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getVisualScrollPercentY()F
    .locals 3

    .prologue
    .line 782
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getVisualScrollX()F
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    goto :goto_0
.end method

.method public getVisualScrollY()F
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    goto :goto_0
.end method

.method public getWidget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 709
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    :cond_0
    const/4 p0, 0x0

    .line 712
    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    :cond_1
    :goto_0
    return-object p0

    .line 710
    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p0

    goto :goto_0
.end method

.method public isBottomEdge()Z
    .locals 2

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    .line 912
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlinging()Z
    .locals 2

    .prologue
    .line 920
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceScrollX()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollX:Z

    return v0
.end method

.method public isForceScrollY()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollY:Z

    return v0
.end method

.method public isLeftEdge()Z
    .locals 2

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanning()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    return v0
.end method

.method public isRightEdge()Z
    .locals 2

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollX()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    return v0
.end method

.method public isScrollY()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    return v0
.end method

.method public isTopEdge()Z
    .locals 2

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout()V
    .locals 27

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 366
    .local v3, "bg":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 367
    .local v12, "hScrollKnob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v17, v0

    .line 369
    .local v17, "vScrollKnob":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    const/4 v5, 0x0

    .local v5, "bgLeftWidth":F
    const/4 v6, 0x0

    .local v6, "bgRightWidth":F
    const/4 v7, 0x0

    .local v7, "bgTopHeight":F
    const/4 v4, 0x0

    .line 370
    .local v4, "bgBottomHeight":F
    if-eqz v3, :cond_0

    .line 371
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    .line 372
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v6

    .line 373
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v7

    .line 374
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v4

    .line 377
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v21

    .line 378
    .local v21, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v13

    .line 380
    .local v13, "height":F
    const/4 v15, 0x0

    .line 381
    .local v15, "scrollbarHeight":F
    if-eqz v12, :cond_1

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v15

    .line 382
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 383
    :cond_2
    const/16 v16, 0x0

    .line 384
    .local v16, "scrollbarWidth":F
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v16

    .line 385
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 388
    :cond_4
    sub-float v22, v21, v5

    sub-float v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 389
    sub-float v22, v13, v7

    sub-float v22, v22, v4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 522
    :cond_5
    :goto_0
    return-void

    .line 395
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v14, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 397
    .local v14, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v20

    .line 398
    .local v20, "widgetWidth":F
    invoke-interface {v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v19

    .line 405
    .end local v14    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    .local v19, "widgetHeight":F
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollX:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-lez v22, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    move/from16 v22, v0

    if-nez v22, :cond_10

    :cond_7
    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollY:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    :cond_8
    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    .line 408
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    .line 409
    .local v10, "fade":Z
    if-nez v10, :cond_a

    .line 411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v22, v0

    sub-float v22, v22, v16

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-lez v22, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    move/from16 v22, v0

    if-nez v22, :cond_9

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    .line 415
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v22, v0

    sub-float v22, v22, v15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    .line 417
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    .line 418
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v22, v0

    sub-float v22, v22, v16

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 425
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v5, v4, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 427
    if-eqz v10, :cond_12

    .line 429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v22, v0

    sub-float v22, v22, v15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    .line 431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v22, v0

    sub-float v22, v22, v16

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    .line 447
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    move/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v20, v0

    .line 448
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    move/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v19, v0

    .line 450
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    .line 451
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    .line 452
    if-eqz v10, :cond_c

    .line 454
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    move/from16 v22, v0

    sub-float v22, v22, v15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    move/from16 v22, v0

    sub-float v22, v22, v16

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    .line 459
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    .line 463
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 464
    if-eqz v12, :cond_1c

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v11

    .line 467
    .local v11, "hScrollHeight":F
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    move v8, v5

    .line 469
    .local v8, "boundsX":F
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    move v9, v4

    .line 470
    .local v9, "boundsY":F
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v8, v9, v1, v11}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    div-float v24, v24, v20

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 476
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentX()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 485
    .end local v8    # "boundsX":F
    .end local v9    # "boundsY":F
    .end local v11    # "hScrollHeight":F
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 486
    if-eqz v17, :cond_22

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v18

    .line 490
    .local v18, "vScrollWidth":F
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    .line 491
    sub-float v22, v13, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v23, v0

    sub-float v9, v22, v23

    .line 496
    .restart local v9    # "boundsY":F
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1f

    .line 497
    sub-float v22, v21, v6

    sub-float v8, v22, v18

    .line 501
    .restart local v8    # "boundsX":F
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    move/from16 v22, v0

    if-eqz v22, :cond_20

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    div-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(FF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 508
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    move/from16 v22, v0

    if-eqz v22, :cond_21

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    sub-float v23, v21, v6

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v24

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 513
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentY()F

    move-result v26

    sub-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 520
    .end local v8    # "boundsX":F
    .end local v9    # "boundsY":F
    .end local v18    # "vScrollWidth":F
    :cond_e
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v22, v0

    check-cast v22, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface/range {v22 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    goto/16 :goto_0

    .line 400
    .end local v10    # "fade":Z
    .end local v19    # "widgetHeight":F
    .end local v20    # "widgetWidth":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v20

    .line 401
    .restart local v20    # "widgetWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v19

    .restart local v19    # "widgetHeight":F
    goto/16 :goto_1

    .line 405
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 406
    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 434
    .restart local v10    # "fade":Z
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move/from16 v23, v0

    add-float v23, v23, v15

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 437
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v23, v0

    add-float v23, v23, v16

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    goto/16 :goto_4

    .line 440
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move/from16 v23, v0

    add-float v23, v23, v15

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 442
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetAreaBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move/from16 v23, v0

    add-float v23, v23, v16

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    goto/16 :goto_4

    .line 447
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    goto/16 :goto_5

    .line 448
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    goto/16 :goto_6

    .line 465
    :cond_18
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v11

    goto/16 :goto_7

    .line 467
    .restart local v11    # "hScrollHeight":F
    :cond_19
    add-float v8, v5, v16

    goto/16 :goto_8

    .line 469
    .restart local v8    # "boundsX":F
    :cond_1a
    sub-float v22, v13, v7

    sub-float v9, v22, v11

    goto/16 :goto_9

    .line 474
    .restart local v9    # "boundsY":F
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    goto/16 :goto_a

    .line 481
    .end local v8    # "boundsX":F
    .end local v9    # "boundsY":F
    .end local v11    # "hScrollHeight":F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    goto/16 :goto_b

    .line 487
    :cond_1d
    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v18

    goto/16 :goto_c

    .line 493
    .restart local v18    # "vScrollWidth":F
    :cond_1e
    move v9, v4

    .restart local v9    # "boundsY":F
    goto/16 :goto_d

    .line 499
    :cond_1f
    move v8, v5

    .restart local v8    # "boundsX":F
    goto/16 :goto_e

    .line 506
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    invoke-interface/range {v17 .. v17}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto/16 :goto_f

    .line 511
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v5, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    goto/16 :goto_10

    .line 515
    .end local v8    # "boundsX":F
    .end local v9    # "boundsY":F
    .end local v18    # "vScrollWidth":F
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    goto/16 :goto_11
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    .line 704
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 705
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetFade()V
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    .line 232
    return-void
.end method

.method public scrollTo(FFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v5, 0x0

    .line 818
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollTo(FFFFZZ)V

    .line 819
    return-void
.end method

.method public scrollTo(FFFFZZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "centerHorizontal"    # Z
    .param p6, "centerVertical"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 824
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 825
    .local v0, "amountX":F
    if-eqz p5, :cond_2

    .line 826
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    div-float/2addr v2, v4

    sub-float v2, p1, v2

    div-float v3, p3, v4

    add-float v0, v2, v3

    .line 831
    :cond_0
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {v0, v5, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 833
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 834
    .local v1, "amountY":F
    if-eqz p6, :cond_4

    .line 835
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    div-float v3, p4, v4

    sub-float v1, v2, v3

    .line 840
    :cond_1
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {v1, v5, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    .line 841
    return-void

    .line 828
    .end local v1    # "amountY":F
    :cond_2
    add-float v2, p1, p3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    add-float/2addr v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    add-float v2, p1, p3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    sub-float v0, v2, v3

    .line 829
    :cond_3
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    move v0, p1

    goto :goto_0

    .line 837
    .restart local v1    # "amountY":F
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float/2addr v2, p2

    sub-float/2addr v2, p4

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    add-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float/2addr v2, p2

    sub-float/2addr v2, p4

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    add-float v1, v2, v3

    .line 838
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float/2addr v2, p2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float v1, v2, p2

    goto :goto_1
.end method

.method protected scrollX(F)V
    .locals 0
    .param p1, "pixelsX"    # F

    .prologue
    .line 717
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 718
    return-void
.end method

.method protected scrollY(F)V
    .locals 0
    .param p1, "pixelsY"    # F

    .prologue
    .line 722
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 723
    return-void
.end method

.method public setCancelTouchFocus(Z)V
    .locals 0
    .param p1, "cancelTouchFocus"    # Z

    .prologue
    .line 1028
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    .line 1029
    return-void
.end method

.method public setClamp(Z)V
    .locals 0
    .param p1, "clamp"    # Z

    .prologue
    .line 981
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    .line 982
    return-void
.end method

.method public setFadeScrollBars(Z)V
    .locals 1
    .param p1, "fadeScrollBars"    # Z

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-ne v0, p1, :cond_0

    .line 996
    :goto_0
    return-void

    .line 993
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    .line 994
    if-nez p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 995
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    goto :goto_0
.end method

.method public setFlickScroll(Z)V
    .locals 1
    .param p1, "flickScroll"    # Z

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-ne v0, p1, :cond_0

    .line 809
    :goto_0
    return-void

    .line 803
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    .line 804
    if-eqz p1, :cond_1

    .line 805
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 808
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_1
.end method

.method public setFlickScrollTapSquareSize(F)V
    .locals 1
    .param p1, "halfTapSquareSize"    # F

    .prologue
    .line 812
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/input/GestureDetector;->setTapSquareSize(F)V

    .line 813
    return-void
.end method

.method public setFlingTime(F)V
    .locals 0
    .param p1, "flingTime"    # F

    .prologue
    .line 976
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    .line 977
    return-void
.end method

.method public setForceScroll(ZZ)V
    .locals 0
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .line 962
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollX:Z

    .line 963
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollY:Z

    .line 964
    return-void
.end method

.method public setOverscroll(ZZ)V
    .locals 0
    .param p1, "overscrollX"    # Z
    .param p2, "overscrollY"    # Z

    .prologue
    .line 947
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    .line 948
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    .line 949
    return-void
.end method

.method public setScrollBarPositions(ZZ)V
    .locals 0
    .param p1, "bottom"    # Z
    .param p2, "right"    # Z

    .prologue
    .line 986
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    .line 987
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    .line 988
    return-void
.end method

.method public setScrollPercentX(F)V
    .locals 3
    .param p1, "percentX"    # F

    .prologue
    .line 790
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 791
    return-void
.end method

.method public setScrollPercentY(F)V
    .locals 3
    .param p1, "percentY"    # F

    .prologue
    .line 798
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    .line 799
    return-void
.end method

.method public setScrollX(F)V
    .locals 2
    .param p1, "pixels"    # F

    .prologue
    .line 746
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 747
    return-void
.end method

.method public setScrollY(F)V
    .locals 2
    .param p1, "pixels"    # F

    .prologue
    .line 755
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    .line 756
    return-void
.end method

.method public setScrollbarsOnTop(Z)V
    .locals 0
    .param p1, "scrollbarsOnTop"    # Z

    .prologue
    .line 1011
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    .line 1012
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    .line 1013
    return-void
.end method

.method public setScrollingDisabled(ZZ)V
    .locals 0
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .prologue
    .line 891
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    .line 892
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    .line 893
    return-void
.end method

.method public setSmoothScrolling(Z)V
    .locals 0
    .param p1, "smoothScrolling"    # Z

    .prologue
    .line 1004
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->smoothScrolling:Z

    .line 1005
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .prologue
    .line 257
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 259
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidateHierarchy()V

    .line 260
    return-void
.end method

.method public setVariableSizeKnobs(Z)V
    .locals 0
    .param p1, "variableSizeKnobs"    # Z

    .prologue
    .line 1022
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    .line 1023
    return-void
.end method

.method public setVelocityX(F)V
    .locals 0
    .param p1, "velocityX"    # F

    .prologue
    .line 924
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 925
    return-void
.end method

.method public setVelocityY(F)V
    .locals 0
    .param p1, "velocityY"    # F

    .prologue
    .line 936
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 937
    return-void
.end method

.method public setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "widget"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 667
    if-ne p1, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "widget cannot be the ScrollPane."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 669
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 670
    if-eqz p1, :cond_2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 671
    :cond_2
    return-void
.end method

.method public setupFadeScrollBars(FF)V
    .locals 0
    .param p1, "fadeAlphaSeconds"    # F
    .param p2, "fadeDelaySeconds"    # F

    .prologue
    .line 999
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    .line 1000
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    .line 1001
    return-void
.end method

.method public setupOverscroll(FFF)V
    .locals 0
    .param p1, "distance"    # F
    .param p2, "speedMin"    # F
    .param p3, "speedMax"    # F

    .prologue
    .line 954
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    .line 955
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    .line 956
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    .line 957
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    .line 1043
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateVisualScroll()V
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    .line 766
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    .line 767
    return-void
.end method

.method protected visualScrollX(F)V
    .locals 0
    .param p1, "pixelsX"    # F

    .prologue
    .line 727
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    .line 728
    return-void
.end method

.method protected visualScrollY(F)V
    .locals 0
    .param p1, "pixelsY"    # F

    .prologue
    .line 732
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    .line 733
    return-void
.end method
