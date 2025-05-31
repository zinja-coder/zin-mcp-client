.class public Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
.super Ljava/lang/Object;
.source "ModelNodePart.java"


# instance fields
.field public bones:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field public materialId:Ljava/lang/String;

.field public meshPartId:Ljava/lang/String;

.field public uvMapping:[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
