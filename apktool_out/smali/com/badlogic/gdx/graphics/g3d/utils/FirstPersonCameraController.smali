.class public Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;
.super Lcom/badlogic/gdx/InputAdapter;
.source "FirstPersonCameraController.java"


# instance fields
.field private BACKWARD:I

.field private DOWN:I

.field private FORWARD:I

.field private STRAFE_LEFT:I

.field private STRAFE_RIGHT:I

.field private UP:I

.field private final camera:Lcom/badlogic/gdx/graphics/Camera;

.field private degreesPerPixel:F

.field private final keys:Lcom/badlogic/gdx/utils/IntIntMap;

.field private final tmp:Lcom/badlogic/gdx/math/Vector3;

.field private velocity:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 31
    const/16 v0, 0x1d

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->STRAFE_LEFT:I

    .line 32
    const/16 v0, 0x20

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->STRAFE_RIGHT:I

    .line 33
    const/16 v0, 0x33

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->FORWARD:I

    .line 34
    const/16 v0, 0x2f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->BACKWARD:I

    .line 35
    const/16 v0, 0x2d

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->UP:I

    .line 36
    const/16 v0, 0x21

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->DOWN:I

    .line 37
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    .line 38
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->degreesPerPixel:F

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    .line 43
    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public keyUp(I)Z
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->remove(II)I

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public setDegreesPerPixel(F)V
    .locals 0
    .param p1, "degreesPerPixel"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->degreesPerPixel:F

    .line 67
    return-void
.end method

.method public setVelocity(F)V
    .locals 0
    .param p1, "velocity"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    .line 61
    return-void
.end method

.method public touchDragged(III)Z
    .locals 4
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 71
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getDeltaX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->degreesPerPixel:F

    mul-float v0, v2, v3

    .line 72
    .local v0, "deltaX":F
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getDeltaY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->degreesPerPixel:F

    mul-float v1, v2, v3

    .line 73
    .local v1, "deltaY":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 75
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/math/Vector3;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 77
    const/4 v2, 0x1

    return v2
.end method

.method public update()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->update(F)V

    .line 82
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "deltaTime"    # F

    .prologue
    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->FORWARD:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 87
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->BACKWARD:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    neg-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->STRAFE_LEFT:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    neg-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->STRAFE_RIGHT:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->UP:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->keys:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->DOWN:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    neg-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->velocity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/FirstPersonCameraController;->camera:Lcom/badlogic/gdx/graphics/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Camera;->update(Z)V

    .line 110
    return-void
.end method
