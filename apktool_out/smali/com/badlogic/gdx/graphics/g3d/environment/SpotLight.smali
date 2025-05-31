.class public Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
.super Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
.source "SpotLight.java"


# instance fields
.field public cutoffAngle:F

.field public final direction:Lcom/badlogic/gdx/math/Vector3;

.field public intensity:F

.field public final position:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .prologue
    .line 86
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

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
    .line 82
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFFFFFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "posX"    # F
    .param p5, "posY"    # F
    .param p6, "posZ"    # F
    .param p7, "dirX"    # F
    .param p8, "dirY"    # F
    .param p9, "dirZ"    # F
    .param p10, "intensity"    # F
    .param p11, "cutoffAngle"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p7, p8, p9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 70
    iput p10, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 71
    iput p11, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 72
    return-object p0
.end method

.method public set(FFFLcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "direction"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "intensity"    # F
    .param p7, "cutoffAngle"    # F

    .prologue
    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 48
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 49
    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 50
    :cond_1
    iput p6, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 51
    iput p7, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 52
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;FFFFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "posX"    # F
    .param p3, "posY"    # F
    .param p4, "posZ"    # F
    .param p5, "dirX"    # F
    .param p6, "dirY"    # F
    .param p7, "dirZ"    # F
    .param p8, "intensity"    # F
    .param p9, "cutoffAngle"    # F

    .prologue
    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p5, p6, p7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 60
    iput p8, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 61
    iput p9, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 62
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "direction"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intensity"    # F
    .param p5, "cutoffAngle"    # F

    .prologue
    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 38
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 39
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 40
    :cond_2
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    .line 41
    iput p5, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    .line 42
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 6
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    .prologue
    .line 32
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->intensity:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->cutoffAngle:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SpotLight;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 77
    return-object p0
.end method
