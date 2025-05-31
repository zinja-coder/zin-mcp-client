.class public Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "I18NBundleLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "I18NBundleParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/utils/I18NBundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final encoding:Ljava/lang/String;

.field public final locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0, v0}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;->locale:Ljava/util/Locale;

    .line 98
    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;->encoding:Ljava/lang/String;

    .line 99
    return-void
.end method
