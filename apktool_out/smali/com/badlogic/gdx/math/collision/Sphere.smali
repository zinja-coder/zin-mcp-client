.class public Lcom/badlogic/gdx/math/collision/Sphere;
.super Ljava/lang/Object;
.source "Sphere.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PI_4_3:F = 4.1887903f

.field private static final serialVersionUID:J = -0x5a07a682c996587cL


# instance fields
.field public final center:Lcom/badlogic/gdx/math/Vector3;

.field public radius:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    iput p2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/badlogic/gdx/math/collision/Sphere;

    .line 65
    .local v0, "s":Lcom/badlogic/gdx/math/collision/Sphere;
    iget v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v4, v0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, v0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 53
    const/16 v0, 0x47

    .line 54
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 55
    .local v1, "result":I
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x47

    .line 56
    mul-int/lit8 v2, v1, 0x47

    iget v3, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 57
    return v1
.end method

.method public overlaps(Lcom/badlogic/gdx/math/collision/Sphere;)Z
    .locals 4
    .param p1, "sphere"    # Lcom/badlogic/gdx/math/collision/Sphere;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/Sphere;->center:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v2, p1, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    iget v3, p1, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public surfaceArea()F
    .locals 2

    .prologue
    .line 73
    const v0, 0x41490fdb

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public volume()F
    .locals 2

    .prologue
    .line 69
    const v0, 0x40860a92

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/collision/Sphere;->radius:F

    mul-float/2addr v0, v1

    return v0
.end method
