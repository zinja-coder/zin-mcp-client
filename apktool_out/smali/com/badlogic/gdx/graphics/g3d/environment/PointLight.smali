.class public Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
.super Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
.source "PointLight.java"


# instance fields
.field public intensity:F

.field public final position:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .prologue
    .line 65
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 61
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F
    .param p7, "intensity"    # F

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 55
    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    .line 56
    return-object p0
.end method

.method public set(FFFLcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "intensity"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 39
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 40
    :cond_0
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    .line 41
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;FFFF)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "intensity"    # F

    .prologue
    .line 45
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 47
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    .line 48
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "intensity"    # F

    .prologue
    .line 31
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 32
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 33
    :cond_1
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    .line 34
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;
    .locals 3
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    .prologue
    .line 27
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->intensity:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;->set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/environment/PointLight;

    move-result-object v0

    return-object v0
.end method
