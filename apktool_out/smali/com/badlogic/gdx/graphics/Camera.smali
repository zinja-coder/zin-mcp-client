.class public abstract Lcom/badlogic/gdx/graphics/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field public final combined:Lcom/badlogic/gdx/math/Matrix4;

.field public final direction:Lcom/badlogic/gdx/math/Vector3;

.field public far:F

.field public final frustum:Lcom/badlogic/gdx/math/Frustum;

.field public final invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

.field public near:F

.field public final position:Lcom/badlogic/gdx/math/Vector3;

.field public final projection:Lcom/badlogic/gdx/math/Matrix4;

.field private final ray:Lcom/badlogic/gdx/math/collision/Ray;

.field private final tmpVec:Lcom/badlogic/gdx/math/Vector3;

.field public final up:Lcom/badlogic/gdx/math/Vector3;

.field public final view:Lcom/badlogic/gdx/math/Matrix4;

.field public viewportHeight:F

.field public viewportWidth:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v3, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->projection:Lcom/badlogic/gdx/math/Matrix4;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->view:Lcom/badlogic/gdx/math/Matrix4;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    .line 49
    iput v3, p0, Lcom/badlogic/gdx/graphics/Camera;->near:F

    .line 51
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/Camera;->far:F

    .line 54
    iput v2, p0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    .line 56
    iput v2, p0, Lcom/badlogic/gdx/graphics/Camera;->viewportHeight:F

    .line 59
    new-instance v0, Lcom/badlogic/gdx/math/Frustum;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Frustum;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/math/collision/Ray;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/collision/Ray;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->ray:Lcom/badlogic/gdx/math/collision/Ray;

    return-void
.end method


# virtual methods
.method public getPickRay(FF)Lcom/badlogic/gdx/math/collision/Ray;
    .locals 7
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .prologue
    const/4 v3, 0x0

    .line 264
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v5, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Camera;->getPickRay(FFFFFF)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    return-object v0
.end method

.method public getPickRay(FFFFFF)Lcom/badlogic/gdx/math/collision/Ray;
    .locals 6
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F
    .param p3, "viewportX"    # F
    .param p4, "viewportY"    # F
    .param p5, "viewportWidth"    # F
    .param p6, "viewportHeight"    # F

    .prologue
    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->ray:Lcom/badlogic/gdx/math/collision/Ray;

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 254
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->ray:Lcom/badlogic/gdx/math/collision/Ray;

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 255
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->ray:Lcom/badlogic/gdx/math/collision/Ray;

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->ray:Lcom/badlogic/gdx/math/collision/Ray;

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->ray:Lcom/badlogic/gdx/math/collision/Ray;

    return-object v0
.end method

.method public lookAt(FFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3089705f    # 1.0E-9f

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 78
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->isZero()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 80
    .local v0, "dot":F
    sub-float v1, v0, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Camera;->normalizeUp()V

    .line 90
    .end local v0    # "dot":F
    :cond_1
    return-void

    .line 83
    .restart local v0    # "dot":F
    :cond_2
    add-float v1, v0, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0
.end method

.method public lookAt(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 3
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 95
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Camera;->lookAt(FFF)V

    .line 96
    return-void
.end method

.method public normalizeUp()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 103
    return-void
.end method

.method public project(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "worldCoords"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v2, 0x0

    .line 221
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 222
    return-object p1
.end method

.method public project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "worldCoords"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "viewportX"    # F
    .param p3, "viewportY"    # F
    .param p4, "viewportWidth"    # F
    .param p5, "viewportHeight"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 237
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p4

    div-float/2addr v0, v2

    add-float/2addr v0, p2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 238
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p5

    div-float/2addr v0, v2

    add-float/2addr v0, p3

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 239
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 240
    return-object p1
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "axisX"    # F
    .param p3, "axisY"    # F
    .param p4, "axisZ"    # F

    .prologue
    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Vector3;->rotate(FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Vector3;->rotate(FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 115
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 134
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1
    .param p1, "quat"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Quaternion;->transform(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Quaternion;->transform(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 143
    return-void
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .prologue
    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->up:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 125
    return-void
.end method

.method public rotateAround(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 3
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "angle"    # F

    .prologue
    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Camera;->translate(Lcom/badlogic/gdx/math/Vector3;)V

    .line 155
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/graphics/Camera;->rotate(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Camera;->tmpVec:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Camera;->translate(FFF)V

    .line 158
    return-void
.end method

.method public transform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 165
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Camera;->rotate(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 166
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 174
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 180
    return-void
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "screenCoords"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v2, 0x0

    .line 212
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v4, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 213
    return-object p1
.end method

.method public unproject(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .param p1, "screenCoords"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "viewportX"    # F
    .param p3, "viewportY"    # F
    .param p4, "viewportWidth"    # F
    .param p5, "viewportHeight"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 194
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .local v0, "x":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 195
    .local v1, "y":F
    sub-float/2addr v0, p2

    .line 196
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    sub-float v1, v2, v3

    .line 197
    sub-float/2addr v1, p3

    .line 198
    mul-float v2, v4, v0

    div-float/2addr v2, p4

    sub-float/2addr v2, v3

    iput v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 199
    mul-float v2, v4, v1

    div-float/2addr v2, p5

    sub-float/2addr v2, v3

    iput v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 200
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v4

    sub-float/2addr v2, v3

    iput v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 201
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/Camera;->invProjectionView:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Vector3;->prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 202
    return-object p1
.end method

.method public abstract update()V
.end method

.method public abstract update(Z)V
.end method
