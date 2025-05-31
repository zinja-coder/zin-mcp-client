.class public Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;
.super Lcom/badlogic/gdx/input/GestureDetector;
.source "CameraInputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;
    }
.end annotation


# instance fields
.field public activateKey:I

.field protected activatePressed:Z

.field public alwaysScroll:Z

.field public autoUpdate:Z

.field public backwardKey:I

.field protected backwardPressed:Z

.field protected button:I

.field public camera:Lcom/badlogic/gdx/graphics/Camera;

.field public forwardButton:I

.field public forwardKey:I

.field protected forwardPressed:Z

.field public forwardTarget:Z

.field protected final gestureListener:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;

.field private multiTouch:Z

.field public pinchZoomFactor:F

.field public rotateAngle:F

.field public rotateButton:I

.field public rotateLeftKey:I

.field protected rotateLeftPressed:Z

.field public rotateRightKey:I

.field protected rotateRightPressed:Z

.field public scrollFactor:F

.field public scrollTarget:Z

.field private startX:F

.field private startY:F

.field public target:Lcom/badlogic/gdx/math/Vector3;

.field private final tmpV1:Lcom/badlogic/gdx/math/Vector3;

.field private final tmpV2:Lcom/badlogic/gdx/math/Vector3;

.field private touched:I

.field public translateButton:I

.field public translateTarget:Z

.field public translateUnits:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 132
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;Lcom/badlogic/gdx/graphics/Camera;)V

    .line 133
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 4
    .param p1, "gestureListener"    # Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;
    .param p2, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 31
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateButton:I

    .line 33
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateAngle:F

    .line 35
    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateButton:I

    .line 37
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateUnits:F

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardButton:I

    .line 41
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activateKey:I

    .line 45
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->alwaysScroll:Z

    .line 47
    const v0, -0x42333333    # -0.1f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->scrollFactor:F

    .line 49
    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->pinchZoomFactor:F

    .line 51
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->autoUpdate:Z

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    .line 55
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateTarget:Z

    .line 57
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardTarget:Z

    .line 59
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->scrollTarget:Z

    .line 60
    const/16 v0, 0x33

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardKey:I

    .line 62
    const/16 v0, 0x2f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->backwardKey:I

    .line 64
    const/16 v0, 0x1d

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateRightKey:I

    .line 66
    const/16 v0, 0x20

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateLeftKey:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    .line 126
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->gestureListener:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->gestureListener:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;

    iput-object p0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController$CameraGestureListener;->controller:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;

    .line 128
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 129
    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x1

    .line 224
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activateKey:I

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activatePressed:Z

    .line 225
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardKey:I

    if-ne p1, v0, :cond_2

    .line 226
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardPressed:Z

    .line 232
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->backwardKey:I

    if-ne p1, v0, :cond_3

    .line 228
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->backwardPressed:Z

    goto :goto_0

    .line 229
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateRightKey:I

    if-ne p1, v0, :cond_4

    .line 230
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateRightPressed:Z

    goto :goto_0

    .line 231
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateLeftKey:I

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateLeftPressed:Z

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x0

    .line 237
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activateKey:I

    if-ne p1, v0, :cond_0

    .line 238
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activatePressed:Z

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    .line 241
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardKey:I

    if-ne p1, v0, :cond_2

    .line 242
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardPressed:Z

    .line 248
    :cond_1
    :goto_0
    return v1

    .line 243
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->backwardKey:I

    if-ne p1, v0, :cond_3

    .line 244
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->backwardPressed:Z

    goto :goto_0

    .line 245
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateRightKey:I

    if-ne p1, v0, :cond_4

    .line 246
    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateRightPressed:Z

    goto :goto_0

    .line 247
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateLeftKey:I

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateLeftPressed:Z

    goto :goto_0
.end method

.method protected pinchZoom(F)Z
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 219
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->pinchZoomFactor:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->zoom(F)Z

    move-result v0

    return v0
.end method

.method protected process(FFI)Z
    .locals 4
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "button"    # I

    .prologue
    .line 178
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateButton:I

    if-ne p3, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateAngle:F

    mul-float/2addr v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Camera;->rotateAround(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)V

    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateAngle:F

    neg-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Camera;->rotateAround(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)V

    .line 190
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->autoUpdate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 191
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateButton:I

    if-ne p3, v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    neg-float v2, p1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateUnits:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    neg-float v2, p2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateUnits:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 185
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateTarget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 186
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardButton:I

    if-ne p3, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateUnits:F

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 188
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardTarget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0
.end method

.method public scrolled(I)Z
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 207
    int-to-float v0, p1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->scrollFactor:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateUnits:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public touchDown(IIII)Z
    .locals 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->touched:I

    shl-int v3, v1, p3

    or-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->touched:I

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->touched:I

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->multiTouch:Z

    .line 159
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->multiTouch:Z

    if-eqz v0, :cond_4

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    .line 166
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activatePressed:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activateKey:I

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activatePressed:Z

    if-eqz v0, :cond_0

    .line 162
    :cond_5
    int-to-float v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->startX:F

    .line 163
    int-to-float v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->startY:F

    .line 164
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    goto :goto_1
.end method

.method public touchDragged(III)Z
    .locals 5
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(III)Z

    move-result v2

    .line 197
    .local v2, "result":Z
    if-nez v2, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    if-gez v3, :cond_1

    .line 202
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    return v2

    .line 198
    .restart local v2    # "result":Z
    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->startX:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 199
    .local v0, "deltaX":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->startY:F

    int-to-float v4, p2

    sub-float/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 200
    .local v1, "deltaY":F
    int-to-float v3, p1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->startX:F

    .line 201
    int-to-float v3, p2

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->startY:F

    .line 202
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->process(FFI)Z

    move-result v2

    goto :goto_0
.end method

.method public touchUp(IIII)Z
    .locals 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 171
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->touched:I

    shl-int v3, v1, p3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->touched:I

    .line 172
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->touched:I

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->multiTouch:Z

    .line 173
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    if-ne p4, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->button:I

    .line 174
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activatePressed:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 172
    goto :goto_0
.end method

.method public update()V
    .locals 5

    .prologue
    .line 136
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateRightPressed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateLeftPressed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardPressed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->backwardPressed:Z

    if-eqz v1, :cond_5

    .line 137
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    .line 138
    .local v0, "delta":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateRightPressed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    neg-float v3, v0

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateAngle:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Camera;->rotate(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 139
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateLeftPressed:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->rotateAngle:F

    mul-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Camera;->rotate(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 140
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardPressed:Z

    if-eqz v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateUnits:F

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Camera;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 142
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardTarget:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 144
    :cond_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->backwardPressed:Z

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    neg-float v3, v0

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->translateUnits:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Camera;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 146
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->forwardTarget:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 148
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->autoUpdate:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 150
    .end local v0    # "delta":F
    :cond_5
    return-void
.end method

.method public zoom(F)Z
    .locals 3
    .param p1, "amount"    # F

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->alwaysScroll:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activateKey:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->activatePressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 213
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->scrollTarget:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->target:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->autoUpdate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 215
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
