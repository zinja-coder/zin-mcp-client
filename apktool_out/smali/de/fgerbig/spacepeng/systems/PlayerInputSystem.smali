.class public Lde/fgerbig/spacepeng/systems/PlayerInputSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "PlayerInputSystem.java"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;
.implements Lcom/badlogic/gdx/controllers/ControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/fgerbig/spacepeng/systems/PlayerInputSystem$1;,
        Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;
    }
.end annotation


# static fields
.field private static final DAMPING:F = 25.0f

.field private static final FIRE_RATE:F = 0.25f

.field private static final HORIZONTAL_MAX_SPEED:F = 500.0f

.field private static final HORIZONTAL_THRUSTERS:F = 500.0f


# instance fields
.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field private directInput:Z

.field doubleShot_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/powerup/DoubleShot;",
            ">;"
        }
    .end annotation
.end field

.field eventManager:Lde/fgerbig/spacepeng/events/EventManager;

.field private fireState:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

.field private left:Z

.field private mouseVector:Lcom/badlogic/gdx/math/Vector3;

.field pos_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Position;",
            ">;"
        }
    .end annotation
.end field

.field private right:Z

.field private shoot:Z

.field private timeToContinue:F

.field private timeToShoot:F

.field private viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

.field vlc_cm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Velocity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/events/EventManager;Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 4
    .param p1, "eventManager"    # Lde/fgerbig/spacepeng/events/EventManager;
    .param p2, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .param p3, "viewport"    # Lcom/badlogic/gdx/utils/viewport/Viewport;

    .prologue
    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lde/fgerbig/spacepeng/components/Position;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lde/fgerbig/spacepeng/components/Velocity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lde/fgerbig/spacepeng/components/Player;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 66
    sget-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->ALLOW:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->fireState:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    .line 81
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    .line 82
    iput-object p2, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 83
    iput-object p3, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 84
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->mouseVector:Lcom/badlogic/gdx/math/Vector3;

    .line 85
    return-void
.end method


# virtual methods
.method public accelerometerMoved(Lcom/badlogic/gdx/controllers/Controller;ILcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "accelerometerCode"    # I
    .param p3, "value"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public axisMoved(Lcom/badlogic/gdx/controllers/Controller;IF)Z
    .locals 2
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "axisCode"    # I
    .param p3, "value"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 296
    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->left:Z

    .line 297
    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->right:Z

    .line 299
    if-nez p2, :cond_1

    .line 300
    const v0, -0x41b33333    # -0.2f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 301
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->left:Z

    .line 303
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    .line 304
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->right:Z

    .line 308
    :cond_1
    return v1
.end method

.method public buttonDown(Lcom/badlogic/gdx/controllers/Controller;I)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "buttonCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    .line 282
    return v0
.end method

.method public buttonUp(Lcom/badlogic/gdx/controllers/Controller;I)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "buttonCode"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public connected(Lcom/badlogic/gdx/controllers/Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;

    .prologue
    .line 271
    return-void
.end method

.method public disconnected(Lcom/badlogic/gdx/controllers/Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;

    .prologue
    .line 276
    return-void
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 90
    invoke-static {p0}, Lcom/badlogic/gdx/controllers/Controllers;->addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V

    .line 91
    return-void
.end method

.method public keyDown(I)Z
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x1

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->directInput:Z

    .line 176
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x94

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26

    if-ne p1, v0, :cond_2

    .line 180
    :cond_0
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->left:Z

    .line 195
    :cond_1
    :goto_0
    return v1

    .line 182
    :cond_2
    const/16 v0, 0x16

    if-eq p1, v0, :cond_3

    const/16 v0, 0x96

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-ne p1, v0, :cond_4

    .line 186
    :cond_3
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->right:Z

    goto :goto_0

    .line 188
    :cond_4
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x90

    if-eq p1, v0, :cond_5

    const/16 v0, 0x81

    if-eq p1, v0, :cond_5

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    .line 192
    :cond_5
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    goto :goto_0
.end method

.method public keyTyped(C)Z
    .locals 1
    .param p1, "character"    # C

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public keyUp(I)Z
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x94

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x26

    if-ne p1, v0, :cond_2

    .line 206
    :cond_0
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->left:Z

    .line 221
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_2
    const/16 v0, 0x16

    if-eq p1, v0, :cond_3

    const/16 v0, 0x96

    if-eq p1, v0, :cond_3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-ne p1, v0, :cond_4

    .line 212
    :cond_3
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->right:Z

    goto :goto_0

    .line 214
    :cond_4
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x90

    if-eq p1, v0, :cond_5

    const/16 v0, 0x81

    if-eq p1, v0, :cond_5

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    .line 218
    :cond_5
    iput-boolean v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    goto :goto_0
.end method

.method public mouseMoved(II)Z
    .locals 1
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public povMoved(Lcom/badlogic/gdx/controllers/Controller;ILcom/badlogic/gdx/controllers/PovDirection;)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "povCode"    # I
    .param p3, "value"    # Lcom/badlogic/gdx/controllers/PovDirection;

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method protected process(Lcom/artemis/Entity;)V
    .locals 13
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const/high16 v12, 0x41c80000    # 25.0f

    const/high16 v11, 0x41700000    # 15.0f

    const/high16 v10, -0x3c060000    # -500.0f

    const/high16 v9, 0x43fa0000    # 500.0f

    const/4 v8, 0x0

    .line 95
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v0, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v6

    check-cast v6, Lde/fgerbig/spacepeng/components/Position;

    .line 96
    .local v6, "position":Lde/fgerbig/spacepeng/components/Position;
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->vlc_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v0, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v7

    check-cast v7, Lde/fgerbig/spacepeng/components/Velocity;

    .line 98
    .local v7, "velocity":Lde/fgerbig/spacepeng/components/Velocity;
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->mouseVector:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 99
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->mouseVector:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 101
    iget-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->directInput:Z

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->mouseVector:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    .line 117
    :goto_0
    sget-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$1;->$SwitchMap$de$fgerbig$spacepeng$systems$PlayerInputSystem$FireState:[I

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->fireState:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    invoke-virtual {v1}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_1
    return-void

    .line 104
    :cond_1
    iget-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->left:Z

    if-eqz v0, :cond_2

    .line 105
    iget v0, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->getDelta()F

    move-result v1

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0, v10, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    goto :goto_0

    .line 106
    :cond_2
    iget-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->right:Z

    if-eqz v0, :cond_3

    .line 107
    iget v0, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->world:Lcom/artemis/World;

    invoke-virtual {v1}, Lcom/artemis/World;->getDelta()F

    move-result v1

    mul-float/2addr v1, v9

    add-float/2addr v0, v1

    invoke-static {v0, v10, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    goto :goto_0

    .line 109
    :cond_3
    iget v0, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v12

    if-gez v0, :cond_4

    .line 110
    iput v8, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    goto :goto_0

    .line 112
    :cond_4
    iget v0, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    iget v1, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iput v0, v7, Lde/fgerbig/spacepeng/components/Velocity;->vectorX:F

    goto :goto_0

    .line 120
    :pswitch_0
    iget v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToContinue:F

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->world:Lcom/artemis/World;

    iget v1, v1, Lcom/artemis/World;->delta:F

    sub-float/2addr v0, v1

    iput v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToContinue:F

    .line 122
    iget v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToContinue:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_0

    .line 123
    iput v8, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToContinue:F

    .line 124
    sget-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->CONTINUE:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->fireState:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    goto :goto_1

    .line 129
    :pswitch_1
    iget-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->eventManager:Lde/fgerbig/spacepeng/events/EventManager;

    const-string v1, "continue"

    invoke-interface {v0, v1, p0}, Lde/fgerbig/spacepeng/events/EventManager;->submit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 135
    :pswitch_2
    iget-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    if-eqz v0, :cond_5

    .line 136
    iget v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToShoot:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_5

    .line 137
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->doubleShot_cm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v0, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->world:Lcom/artemis/World;

    iget v1, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    sub-float/2addr v1, v11

    iget v2, v6, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v0, v1, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createPlayerShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 139
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->world:Lcom/artemis/World;

    iget v1, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    add-float/2addr v1, v11

    iget v2, v6, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v0, v1, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createPlayerShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    .line 143
    :goto_2
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToShoot:F

    .line 146
    :cond_5
    iget v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToShoot:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_0

    .line 147
    iget v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToShoot:F

    iget-object v1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->world:Lcom/artemis/World;

    iget v1, v1, Lcom/artemis/World;->delta:F

    sub-float/2addr v0, v1

    iput v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToShoot:F

    .line 148
    iget v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToShoot:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    .line 149
    iput v8, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToShoot:F

    goto/16 :goto_1

    .line 141
    :cond_6
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->world:Lcom/artemis/World;

    iget v1, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v2, v6, Lde/fgerbig/spacepeng/components/Position;->y:F

    invoke-static {v0, v1, v2}, Lde/fgerbig/spacepeng/services/EntityFactory;->createPlayerShot(Lcom/artemis/World;FF)Lcom/artemis/Entity;

    goto :goto_2

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrolled(I)Z
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public setFireAllowed()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->ALLOW:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->fireState:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    .line 159
    return-void
.end method

.method public setFireBlockedForSeconds(F)V
    .locals 1
    .param p1, "timeToContinue"    # F

    .prologue
    .line 167
    sget-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->BLOCKED:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->fireState:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    .line 168
    iput p1, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->timeToContinue:F

    .line 169
    return-void
.end method

.method public touchDown(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->directInput:Z

    .line 234
    if-nez p4, :cond_0

    .line 235
    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    .line 237
    :cond_0
    return v0
.end method

.method public touchDragged(III)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public touchUp(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 243
    if-nez p4, :cond_0

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem;->shoot:Z

    .line 246
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public xSliderMoved(Lcom/badlogic/gdx/controllers/Controller;IZ)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "sliderCode"    # I
    .param p3, "value"    # Z

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public ySliderMoved(Lcom/badlogic/gdx/controllers/Controller;IZ)Z
    .locals 1
    .param p1, "controller"    # Lcom/badlogic/gdx/controllers/Controller;
    .param p2, "sliderCode"    # I
    .param p3, "value"    # Z

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method
