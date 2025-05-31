.class Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$2;
.super Ljava/lang/Object;
.source "CameraGroupStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;-><init>(Lcom/badlogic/gdx/graphics/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$camera:Lcom/badlogic/gdx/graphics/Camera;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$2;->val$camera:Lcom/badlogic/gdx/graphics/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I
    .locals 4
    .param p1, "o1"    # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .param p2, "o2"    # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .prologue
    .line 102
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$2;->val$camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 103
    .local v0, "dist1":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$2;->val$camera:Lcom/badlogic/gdx/graphics/Camera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 104
    .local v1, "dist2":F
    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$2;->compare(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I

    move-result v0

    return v0
.end method
