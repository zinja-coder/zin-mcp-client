.class Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "CameraGroupStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/utils/Array",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$1;->this$0:Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/CameraGroupStrategy$1;->newObject()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method
