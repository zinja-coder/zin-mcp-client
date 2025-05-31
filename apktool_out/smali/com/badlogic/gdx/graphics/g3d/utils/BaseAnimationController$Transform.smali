.class public final Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
.super Ljava/lang/Object;
.source "BaseAnimationController.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transform"
.end annotation


# instance fields
.field public final rotation:Lcom/badlogic/gdx/math/Quaternion;

.field public final scale:Lcom/badlogic/gdx/math/Vector3;

.field public final translation:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 46
    return-void
.end method


# virtual methods
.method public idt()Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 52
    return-object p0
.end method

.method public lerp(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .locals 3
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .param p2, "alpha"    # F

    .prologue
    .line 67
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->lerp(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v0

    return-object v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .locals 1
    .param p1, "targetT"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "targetR"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "targetS"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "alpha"    # F

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p4}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p2, p4}, Lcom/badlogic/gdx/math/Quaternion;->slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    return-object p0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->idt()Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    .line 84
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    .prologue
    .line 63
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;
    .locals 1
    .param p1, "t"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "r"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "s"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 59
    return-object p0
.end method

.method public toMatrix4(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .param p1, "out"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->translation:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Quaternion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController$Transform;->scale:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
