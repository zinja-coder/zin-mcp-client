.class public Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
.super Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
.source "DirectionalLight.java"


# instance fields
.field public final direction:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;-><init>()V

    .line 23
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public equals(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .prologue
    .line 59
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

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
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 55
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->equals(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "arg0":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "dirX"    # F
    .param p5, "dirY"    # F
    .param p6, "dirZ"    # F

    .prologue
    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 50
    return-object p0
.end method

.method public set(FFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 37
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 38
    :cond_0
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;FFF)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "dirX"    # F
    .param p3, "dirY"    # F
    .param p4, "dirZ"    # F

    .prologue
    .line 42
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 44
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 31
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 32
    :cond_1
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;
    .locals 2
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    .prologue
    .line 26
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;->set(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/DirectionalLight;

    move-result-object v0

    return-object v0
.end method
