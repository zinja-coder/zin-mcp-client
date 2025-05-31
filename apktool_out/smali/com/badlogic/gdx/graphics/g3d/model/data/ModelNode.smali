.class public Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
.super Ljava/lang/Object;
.source "ModelNode.java"


# instance fields
.field public boneId:I

.field public children:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

.field public id:Ljava/lang/String;

.field public meshId:Ljava/lang/String;

.field public parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

.field public rotation:Lcom/badlogic/gdx/math/Quaternion;

.field public scale:Lcom/badlogic/gdx/math/Vector3;

.field public translation:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->boneId:I

    return-void
.end method
