.class public Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "SkinLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/SkinLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkinParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
        ">;"
    }
.end annotation


# instance fields
.field public final resources:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final textureAtlasPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, v0}, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "textureAtlasPath"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .param p1, "textureAtlasPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "resources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->textureAtlasPath:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/SkinLoader$SkinParameter;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 93
    return-void
.end method
