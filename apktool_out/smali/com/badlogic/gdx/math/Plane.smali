.class public Lcom/badlogic/gdx/math/Plane;
.super Ljava/lang/Object;
.source "Plane.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Plane$PlaneSide;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1137ae7f04ef89daL


# instance fields
.field public d:F

.field public final normal:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 1
    .param p1, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "d"    # F

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 44
    iput p2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "point1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "point2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "point3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 64
    return-void
.end method


# virtual methods
.method public distance(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getD()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    return v0
.end method

.method public getNormal()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public isFrontFacing(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 137
    .local v0, "dot":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(FFFF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F
    .param p4, "d"    # F

    .prologue
    .line 84
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 85
    iput p4, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 86
    return-void
.end method

.method public set(FFFFFF)V
    .locals 2
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "pointZ"    # F
    .param p4, "norX"    # F
    .param p5, "norY"    # F
    .param p6, "norZ"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p4, p5, p6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 161
    mul-float v0, p1, p4

    mul-float v1, p2, p5

    add-float/2addr v0, v1

    mul-float v1, p3, p6

    add-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 162
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Plane;)V
    .locals 2
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 169
    iget v0, p1, Lcom/badlogic/gdx/math/Plane;->d:F

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 170
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 156
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 157
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 5
    .param p1, "point1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "point2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "point3"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    .line 75
    return-void
.end method

.method public testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float v0, v1, v2

    .line 122
    .local v0, "dist":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    .line 127
    :goto_0
    return-object v1

    .line 124
    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 125
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    goto :goto_0

    .line 127
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    goto :goto_0
.end method

.method public testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 4
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    add-float v0, v1, v2

    .line 104
    .local v0, "dist":F
    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    .line 105
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    .line 109
    :goto_0
    return-object v1

    .line 106
    :cond_0
    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    .line 107
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    goto :goto_0

    .line 109
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/math/Plane;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Plane;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
