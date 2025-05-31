.class public Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
.super Ljava/lang/Object;
.source "ModelMaterial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial$MaterialType;
    }
.end annotation


# instance fields
.field public ambient:Lcom/badlogic/gdx/graphics/Color;

.field public diffuse:Lcom/badlogic/gdx/graphics/Color;

.field public emissive:Lcom/badlogic/gdx/graphics/Color;

.field public id:Ljava/lang/String;

.field public opacity:F

.field public reflection:Lcom/badlogic/gdx/graphics/Color;

.field public shininess:F

.field public specular:Lcom/badlogic/gdx/graphics/Color;

.field public textures:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial$MaterialType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    return-void
.end method
