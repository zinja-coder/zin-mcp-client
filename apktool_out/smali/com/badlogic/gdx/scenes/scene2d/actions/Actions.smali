.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v1

    .line 34
    .local v1, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<TT;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 35
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;, "TT;"
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 36
    return-object v0
.end method

.method public static addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 40
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    .line 41
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 42
    return-object v0
.end method

.method public static addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "targetActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 46
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    .line 47
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 49
    return-object v0
.end method

.method public static addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    .locals 2
    .param p0, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"    # Z

    .prologue
    .line 468
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    .line 469
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 470
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setCapture(Z)V

    .line 471
    return-object v0
.end method

.method public static addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;ZLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    .locals 2
    .param p0, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"    # Z
    .param p2, "targetActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 475
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    .line 476
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 477
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 478
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setCapture(Z)V

    .line 479
    return-object v0
.end method

.method public static after(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 462
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;

    .line 463
    .local v0, "afterAction":Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 464
    return-object v0
.end method

.method public static alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 1
    .param p0, "a"    # F
    .param p1, "duration"    # F

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2
    .param p0, "a"    # F
    .param p1, "duration"    # F
    .param p2, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 248
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    .line 249
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 250
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 251
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 252
    return-object v0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v0

    return-object v0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .locals 1
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "duration"    # F

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v0

    return-object v0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "duration"    # F
    .param p2, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 229
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    .line 230
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setEndColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setDuration(F)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 233
    return-object v0
.end method

.method public static delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    .locals 2
    .param p0, "duration"    # F

    .prologue
    .line 314
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    .line 315
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setDuration(F)V

    .line 316
    return-object v0
.end method

.method public static delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    .locals 2
    .param p0, "duration"    # F
    .param p1, "delayedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 320
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    .line 321
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setDuration(F)V

    .line 322
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 323
    return-object v0
.end method

.method public static fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2
    .param p0, "duration"    # F

    .prologue
    .line 271
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static fadeIn(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2
    .param p0, "duration"    # F
    .param p1, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 276
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    .line 277
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 278
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 279
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 280
    return-object v0
.end method

.method public static fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2
    .param p0, "duration"    # F

    .prologue
    .line 257
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    return-object v0
.end method

.method public static fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2
    .param p0, "duration"    # F
    .param p1, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 262
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    .line 263
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 264
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 265
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 266
    return-object v0
.end method

.method public static forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    .locals 2
    .param p0, "repeatedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 443
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    .line 444
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setCount(I)V

    .line 445
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 446
    return-object v0
.end method

.method public static hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    return-object v0
.end method

.method public static layout(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 456
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;

    .line 457
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->setLayoutEnabled(Z)V

    .line 458
    return-object v0
.end method

.method public static moveBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .locals 2
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .locals 1
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F
    .param p2, "duration"    # F

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .locals 2
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F
    .param p2, "duration"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 108
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    .line 109
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setAmount(FF)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setDuration(F)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 112
    return-object v0
.end method

.method public static moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 75
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    .line 76
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setPosition(FF)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setDuration(F)V

    .line 78
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 79
    return-object v0
.end method

.method public static moveToAligned(FFI)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "alignment"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveToAligned(FFIF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "alignment"    # I
    .param p3, "duration"    # F

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    return-object v0
.end method

.method public static moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "alignment"    # I
    .param p3, "duration"    # F
    .param p4, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 91
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    .line 92
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setPosition(FFI)V

    .line 93
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setDuration(F)V

    .line 94
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 95
    return-object v0
.end method

.method public static parallel()Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 1

    .prologue
    .line 432
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 385
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 386
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 387
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 391
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 392
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 393
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 394
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 398
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 399
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 400
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 401
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 402
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 406
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 407
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 408
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 409
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 410
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 411
    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action5"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 415
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 416
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 417
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 418
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 419
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 420
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 421
    return-object v0
.end method

.method public static varargs parallel([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 4
    .param p0, "actions"    # [Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 425
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 426
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 427
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-object v0
.end method

.method public static removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 53
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    .line 54
    .local v0, "removeAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 55
    return-object v0
.end method

.method public static removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    .locals 2
    .param p0, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "targetActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 59
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    .line 60
    .local v0, "removeAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 62
    return-object v0
.end method

.method public static removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    .locals 1

    .prologue
    .line 304
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    return-object v0
.end method

.method public static removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    .locals 2
    .param p0, "removeActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 308
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    .line 309
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 310
    return-object v0
.end method

.method public static removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    .locals 2
    .param p0, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"    # Z

    .prologue
    .line 483
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    .line 484
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 485
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setCapture(Z)V

    .line 486
    return-object v0
.end method

.method public static removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;ZLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    .locals 2
    .param p0, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p1, "capture"    # Z
    .param p2, "targetActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 490
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    .line 491
    .local v0, "addAction":Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 492
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 493
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setCapture(Z)V

    .line 494
    return-object v0
.end method

.method public static repeat(ILcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    .locals 2
    .param p0, "count"    # I
    .param p1, "repeatedAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 436
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    .line 437
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setCount(I)V

    .line 438
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 439
    return-object v0
.end method

.method public static rotateBy(F)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .locals 2
    .param p0, "rotationAmount"    # F

    .prologue
    .line 202
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .locals 1
    .param p0, "rotationAmount"    # F
    .param p1, "duration"    # F

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .locals 2
    .param p0, "rotationAmount"    # F
    .param p1, "duration"    # F
    .param p2, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 210
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    .line 211
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setAmount(F)V

    .line 212
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setDuration(F)V

    .line 213
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 214
    return-object v0
.end method

.method public static rotateTo(F)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .locals 2
    .param p0, "rotation"    # F

    .prologue
    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .locals 1
    .param p0, "rotation"    # F
    .param p1, "duration"    # F

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object v0

    return-object v0
.end method

.method public static rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .locals 2
    .param p0, "rotation"    # F
    .param p1, "duration"    # F
    .param p2, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 193
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    .line 194
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setRotation(F)V

    .line 195
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setDuration(F)V

    .line 196
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 197
    return-object v0
.end method

.method public static run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 450
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    .line 451
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setRunnable(Ljava/lang/Runnable;)V

    .line 452
    return-object v0
.end method

.method public static scaleBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .locals 2
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F

    .prologue
    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .locals 1
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F
    .param p2, "duration"    # F

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .locals 2
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F
    .param p2, "duration"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 176
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    .line 177
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setAmount(FF)V

    .line 178
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setDuration(F)V

    .line 179
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 180
    return-object v0
.end method

.method public static scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    return-object v0
.end method

.method public static scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 159
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    .line 160
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setScale(FF)V

    .line 161
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setDuration(F)V

    .line 162
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 163
    return-object v0
.end method

.method public static sequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .prologue
    .line 381
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 334
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 335
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 336
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 340
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 341
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 342
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 343
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 347
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 348
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 349
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 350
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 351
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 355
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 356
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 357
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 358
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 359
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 360
    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 2
    .param p0, "action1"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p1, "action2"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p2, "action3"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p3, "action4"    # Lcom/badlogic/gdx/scenes/scene2d/Action;
    .param p4, "action5"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 364
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 365
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 366
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 367
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 368
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 369
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 370
    return-object v0
.end method

.method public static varargs sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 4
    .param p0, "actions"    # [Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 374
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 375
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 376
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-object v0
.end method

.method public static show()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .locals 2
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F

    .prologue
    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .locals 1
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F
    .param p2, "duration"    # F

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .locals 2
    .param p0, "amountX"    # F
    .param p1, "amountY"    # F
    .param p2, "duration"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 142
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    .line 143
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setAmount(FF)V

    .line 144
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setDuration(F)V

    .line 145
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 146
    return-object v0
.end method

.method public static sizeTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "duration"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 125
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    .line 126
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setSize(FF)V

    .line 127
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setDuration(F)V

    .line 128
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    .line 129
    return-object v0
.end method

.method public static timeScale(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;
    .locals 2
    .param p0, "scale"    # F
    .param p1, "scaledAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 327
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;

    .line 328
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->setScale(F)V

    .line 329
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 330
    return-object v0
.end method

.method public static touchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;
    .locals 2
    .param p0, "touchable"    # Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .prologue
    .line 298
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    .line 299
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 300
    return-object v0
.end method

.method public static visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .locals 2
    .param p0, "visible"    # Z

    .prologue
    .line 292
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    .line 293
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->setVisible(Z)V

    .line 294
    return-object v0
.end method
