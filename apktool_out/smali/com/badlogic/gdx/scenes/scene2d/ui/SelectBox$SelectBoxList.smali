.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectBoxList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;"
    }
.end annotation


# instance fields
.field private hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field final list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field maxListCount:I

.field private previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final screenPosition:Lcom/badlogic/gdx/math/Vector2;

.field private final selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    .local p1, "selectBox":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<TT;>;"
    const/4 v2, 0x0

    .line 325
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 319
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    .line 326
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    .line 328
    invoke-virtual {p0, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setOverscroll(ZZ)V

    .line 329
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setFadeScrollBars(Z)V

    .line 331
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 347
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$2;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 353
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 367
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 0
    .param p1, "delta"    # F

    .prologue
    .line 443
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->act(F)V

    .line 444
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->toFront()V

    .line 445
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 3
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 438
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->temp:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hide()V

    .line 439
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 440
    return-void
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 421
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->isTouchable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hasParent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 424
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 425
    .local v1, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v1, :cond_4

    .line 426
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 427
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 428
    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 429
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 432
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->clearActions()V

    .line 433
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->onHide(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 17
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 370
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;, "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList<TT;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->isTouchable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    :goto_0
    return-void

    .line 372
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->hideListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 374
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemHeight()F

    move-result v14

    .line 380
    .local v14, "itemHeight":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    if-gtz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    int-to-float v2, v2

    mul-float v11, v14, v2

    .line 381
    .local v11, "height":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v2

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v16, v0

    .line 382
    .local v16, "scrollPaneBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v16, :cond_1

    .line 383
    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v11, v2

    .line 384
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    move-result-object v2

    iget-object v15, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 385
    .local v15, "listBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v15, :cond_2

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    invoke-interface {v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v11, v2

    .line 387
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 388
    .local v13, "heightBelow":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v3

    sub-float v12, v2, v3

    .line 389
    .local v12, "heightAbove":F
    const/4 v10, 0x1

    .line 390
    .local v10, "below":Z
    cmpl-float v2, v11, v13

    if-lez v2, :cond_3

    .line 391
    cmpl-float v2, v12, v13

    if-lez v2, :cond_6

    .line 392
    const/4 v10, 0x0

    .line 393
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 398
    :cond_3
    :goto_2
    if-eqz v10, :cond_7

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setY(F)V

    .line 402
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setX(F)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->getPrefWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getWidth()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setSize(FF)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->validate()V

    .line 406
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelectedIndex()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    sub-float v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->scrollTo(FFFFZZ)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->updateVisualScroll()V

    .line 409
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v9

    .line 411
    .local v9, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->previousScrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 412
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->clearActions()V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->onShow(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    goto/16 :goto_0

    .line 380
    .end local v9    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v10    # "below":Z
    .end local v11    # "height":F
    .end local v12    # "heightAbove":F
    .end local v13    # "heightBelow":F
    .end local v15    # "listBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v16    # "scrollPaneBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->maxListCount:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto/16 :goto_1

    .line 395
    .restart local v10    # "below":Z
    .restart local v11    # "height":F
    .restart local v12    # "heightAbove":F
    .restart local v13    # "heightBelow":F
    .restart local v15    # "listBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .restart local v16    # "scrollPaneBackground":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_6
    move v11, v13

    goto/16 :goto_2

    .line 401
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->screenPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->selectBox:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxList;->setY(F)V

    goto/16 :goto_3
.end method
