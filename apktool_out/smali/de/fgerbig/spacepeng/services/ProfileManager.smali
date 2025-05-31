.class public Lde/fgerbig/spacepeng/services/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field private static final PROFILE_FILENAME:Ljava/lang/String; = "profile-v1.json"


# instance fields
.field private profile:Lde/fgerbig/spacepeng/services/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private getProfileFileHandle()Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    .prologue
    .line 136
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Application$ApplicationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lde/fgerbig/spacepeng/services/PreferencesManager;->PREFS_DIRNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile-v1.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "filename":Ljava/lang/String;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 140
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profile-v1.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .restart local v0    # "filename":Ljava/lang/String;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public persist()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {p0, v0}, Lde/fgerbig/spacepeng/services/ProfileManager;->persist(Lde/fgerbig/spacepeng/services/Profile;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected persist(Lde/fgerbig/spacepeng/services/Profile;)V
    .locals 7
    .param p1, "profile"    # Lde/fgerbig/spacepeng/services/Profile;

    .prologue
    .line 106
    invoke-direct {p0}, Lde/fgerbig/spacepeng/services/ProfileManager;->getProfileFileHandle()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 107
    .local v2, "profileDataFile":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "SpacePeng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persisting profile in: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 113
    .local v0, "json":Lcom/badlogic/gdx/utils/Json;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "profileAsText":Ljava/lang/String;
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 122
    return-void
.end method

.method public retrieveProfile()Lde/fgerbig/spacepeng/services/Profile;
    .locals 8

    .prologue
    .line 50
    iget-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    .line 98
    :goto_0
    return-object v4

    .line 55
    :cond_0
    invoke-direct {p0}, Lde/fgerbig/spacepeng/services/ProfileManager;->getProfileFileHandle()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 56
    .local v3, "profileDataFile":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieving profile from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 62
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    :try_start_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "profileAsText":Ljava/lang/String;
    const-string v4, "^[A-Za-z0-9/+=]+$"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    const-string v6, "Persisted profile is base64 encoded"

    invoke-interface {v4, v5, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_1
    const-class v4, Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/fgerbig/spacepeng/services/Profile;

    iput-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "profileAsText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "SpacePeng"

    const-string v6, "Unable to parse existing profile data file"

    invoke-interface {v4, v5, v6, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    new-instance v4, Lde/fgerbig/spacepeng/services/Profile;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/services/Profile;-><init>()V

    iput-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    .line 87
    iget-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {p0, v4}, Lde/fgerbig/spacepeng/services/ProfileManager;->persist(Lde/fgerbig/spacepeng/services/Profile;)V

    goto :goto_1

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Lde/fgerbig/spacepeng/services/Profile;

    invoke-direct {v4}, Lde/fgerbig/spacepeng/services/Profile;-><init>()V

    iput-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    .line 94
    iget-object v4, p0, Lde/fgerbig/spacepeng/services/ProfileManager;->profile:Lde/fgerbig/spacepeng/services/Profile;

    invoke-virtual {p0, v4}, Lde/fgerbig/spacepeng/services/ProfileManager;->persist(Lde/fgerbig/spacepeng/services/Profile;)V

    goto :goto_1
.end method
