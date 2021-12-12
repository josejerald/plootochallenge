def generate_url_for_env(env="qa"):
    """
    Method to generate the base url based on the environment
    :param env: String
    :return: Url (string value)
    """
    if env == "qa":
        return "https://app.plooto.com/qa-test-j1K3eVzQ"